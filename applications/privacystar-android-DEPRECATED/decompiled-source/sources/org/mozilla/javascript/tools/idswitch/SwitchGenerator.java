package org.mozilla.javascript.tools.idswitch;

import org.mozilla.javascript.EvaluatorException;
import org.mozilla.javascript.tools.ToolErrorReporter;
/* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/tools/idswitch/SwitchGenerator.class */
public class SwitchGenerator {

    /* renamed from: P */
    private CodePrinter f847P;

    /* renamed from: R */
    private ToolErrorReporter f848R;
    private boolean c_was_defined;
    private int[] columns;
    private String default_value;
    private IdValuePair[] pairs;
    private String source_file;
    String v_switch_label = "L0";
    String v_label = "L";
    String v_s = "s";
    String v_c = "c";
    String v_guess = "X";
    String v_id = "id";
    String v_length_suffix = "_length";
    int use_if_threshold = 3;
    int char_tail_test_threshold = 2;

    private static boolean bigger(IdValuePair idValuePair, IdValuePair idValuePair2, int i) {
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        if (i < 0) {
            int i2 = idValuePair.idLength - idValuePair2.idLength;
            if (i2 != 0) {
                if (i2 > 0) {
                    z3 = true;
                }
                return z3;
            }
            if (idValuePair.f844id.compareTo(idValuePair2.f844id) > 0) {
                z = true;
            }
            return z;
        }
        if (idValuePair.f844id.charAt(i) > idValuePair2.f844id.charAt(i)) {
            z2 = true;
        }
        return z2;
    }

    private void check_all_is_different(int i, int i2) {
        if (i != i2) {
            IdValuePair idValuePair = this.pairs[i];
            while (true) {
                i++;
                if (i != i2) {
                    IdValuePair idValuePair2 = this.pairs[i];
                    if (idValuePair.f844id.equals(idValuePair2.f844id)) {
                        throw on_same_pair_fail(idValuePair, idValuePair2);
                    }
                    idValuePair = idValuePair2;
                } else {
                    return;
                }
            }
        }
    }

    private int count_different_chars(int i, int i2, int i3) {
        int i4 = 0;
        char c = 65535;
        while (i != i2) {
            char charAt = this.pairs[i].f844id.charAt(i3);
            i4 = i4;
            c = c;
            if (charAt != c) {
                i4++;
                c = charAt;
            }
            i++;
        }
        return i4;
    }

    private int count_different_lengths(int i, int i2) {
        int i3 = 0;
        int i4 = -1;
        while (i != i2) {
            int i5 = this.pairs[i].idLength;
            i3 = i3;
            i4 = i4;
            if (i4 != i5) {
                i3++;
                i4 = i5;
            }
            i++;
        }
        return i3;
    }

    private int find_max_different_column(int i, int i2, int i3) {
        int i4 = 0;
        int i5 = 0;
        for (int i6 = 0; i6 != i3; i6++) {
            int i7 = this.columns[i6];
            sort_pairs(i, i2, i7);
            int count_different_chars = count_different_chars(i, i2, i7);
            if (count_different_chars == i2 - i) {
                return i6;
            }
            i5 = i5;
            if (i5 < count_different_chars) {
                i4 = i6;
                i5 = count_different_chars;
            }
        }
        if (i4 != i3 - 1) {
            sort_pairs(i, i2, this.columns[i4]);
        }
        return i4;
    }

    private void generate_body(int i, int i2, int i3) {
        this.f847P.indent(i3);
        this.f847P.m210p(this.v_switch_label);
        this.f847P.m210p(": { ");
        this.f847P.m210p(this.v_id);
        this.f847P.m210p(" = ");
        this.f847P.m210p(this.default_value);
        this.f847P.m210p("; String ");
        this.f847P.m210p(this.v_guess);
        this.f847P.m210p(" = null;");
        this.c_was_defined = false;
        int offset = this.f847P.getOffset();
        this.f847P.m210p(" int ");
        this.f847P.m210p(this.v_c);
        this.f847P.m212p(';');
        int offset2 = this.f847P.getOffset();
        this.f847P.m213nl();
        int i4 = i3 + 1;
        generate_length_switch(i, i2, i4);
        if (!this.c_was_defined) {
            this.f847P.erase(offset, offset2);
        }
        this.f847P.indent(i4);
        this.f847P.m210p("if (");
        this.f847P.m210p(this.v_guess);
        this.f847P.m210p("!=null && ");
        this.f847P.m210p(this.v_guess);
        this.f847P.m210p("!=");
        this.f847P.m210p(this.v_s);
        this.f847P.m210p(" && !");
        this.f847P.m210p(this.v_guess);
        this.f847P.m210p(".equals(");
        this.f847P.m210p(this.v_s);
        this.f847P.m210p(")) ");
        this.f847P.m210p(this.v_id);
        this.f847P.m210p(" = ");
        this.f847P.m210p(this.default_value);
        this.f847P.m210p(";");
        this.f847P.m213nl();
        this.f847P.indent(i4);
        this.f847P.m210p("break ");
        this.f847P.m210p(this.v_switch_label);
        this.f847P.m210p(";");
        this.f847P.m213nl();
        this.f847P.line(i3, "}");
    }

    private void generate_length_switch(int i, int i2, int i3) {
        boolean z;
        int i4;
        sort_pairs(i, i2, -1);
        check_all_is_different(i, i2);
        int count_different_lengths = count_different_lengths(i, i2);
        this.columns = new int[this.pairs[i2 - 1].idLength];
        if (count_different_lengths <= this.use_if_threshold) {
            if (count_different_lengths != 1) {
                this.f847P.indent(i3);
                this.f847P.m210p("int ");
                this.f847P.m210p(this.v_s);
                this.f847P.m210p(this.v_length_suffix);
                this.f847P.m210p(" = ");
                this.f847P.m210p(this.v_s);
                this.f847P.m210p(".length();");
                this.f847P.m213nl();
            }
            z = true;
        } else {
            this.f847P.indent(i3);
            this.f847P.m210p(this.v_label);
            this.f847P.m210p(": switch (");
            this.f847P.m210p(this.v_s);
            this.f847P.m210p(".length()) {");
            this.f847P.m213nl();
            z = false;
        }
        int i5 = this.pairs[i].idLength;
        int i6 = i;
        int i7 = 0;
        int i8 = i;
        while (true) {
            int i9 = i8 + 1;
            if (i9 != i2) {
                int i10 = this.pairs[i9].idLength;
                i8 = i9;
                i7 = i10;
                if (i10 != i5) {
                    i7 = i10;
                } else {
                    continue;
                }
            }
            if (z) {
                this.f847P.indent(i3);
                if (i6 != i) {
                    this.f847P.m210p("else ");
                }
                this.f847P.m210p("if (");
                if (count_different_lengths == 1) {
                    this.f847P.m210p(this.v_s);
                    this.f847P.m210p(".length()==");
                } else {
                    this.f847P.m210p(this.v_s);
                    this.f847P.m210p(this.v_length_suffix);
                    this.f847P.m210p("==");
                }
                this.f847P.m211p(i5);
                this.f847P.m210p(") {");
                i4 = i3 + 1;
            } else {
                this.f847P.indent(i3);
                this.f847P.m210p("case ");
                this.f847P.m211p(i5);
                this.f847P.m210p(":");
                i4 = i3 + 1;
            }
            generate_letter_switch(i6, i9, i4, !z, z);
            if (z) {
                this.f847P.m210p("}");
                this.f847P.m213nl();
            } else {
                this.f847P.m210p("break ");
                this.f847P.m210p(this.v_label);
                this.f847P.m210p(";");
                this.f847P.m213nl();
            }
            if (i9 == i2) {
                break;
            }
            i6 = i9;
            i8 = i9;
            i5 = i7;
            i7 = i7;
        }
        if (!z) {
            this.f847P.indent(i3);
            this.f847P.m210p("}");
            this.f847P.m213nl();
        }
    }

    private void generate_letter_switch(int i, int i2, int i3, boolean z, boolean z2) {
        int i4 = this.pairs[i].idLength;
        for (int i5 = 0; i5 != i4; i5++) {
            this.columns[i5] = i5;
        }
        generate_letter_switch_r(i, i2, i4, i3, z, z2);
    }

    private boolean generate_letter_switch_r(int i, int i2, int i3, int i4, boolean z, boolean z2) {
        boolean z3;
        int i5;
        boolean z4;
        if (i + 1 == i2) {
            this.f847P.m212p(' ');
            IdValuePair idValuePair = this.pairs[i];
            if (i3 > this.char_tail_test_threshold) {
                this.f847P.m210p(this.v_guess);
                this.f847P.m210p("=");
                this.f847P.qstring(idValuePair.f844id);
                this.f847P.m210p(";");
                this.f847P.m210p(this.v_id);
                this.f847P.m210p("=");
                this.f847P.m210p(idValuePair.value);
                this.f847P.m210p(";");
                z4 = false;
            } else if (i3 == 0) {
                this.f847P.m210p(this.v_id);
                this.f847P.m210p("=");
                this.f847P.m210p(idValuePair.value);
                this.f847P.m210p("; break ");
                this.f847P.m210p(this.v_switch_label);
                this.f847P.m210p(";");
                z4 = true;
            } else {
                this.f847P.m210p("if (");
                int i6 = this.columns[0];
                this.f847P.m210p(this.v_s);
                this.f847P.m210p(".charAt(");
                this.f847P.m211p(i6);
                this.f847P.m210p(")==");
                this.f847P.qchar(idValuePair.f844id.charAt(i6));
                for (int i7 = 1; i7 != i3; i7++) {
                    this.f847P.m210p(" && ");
                    int i8 = this.columns[i7];
                    this.f847P.m210p(this.v_s);
                    this.f847P.m210p(".charAt(");
                    this.f847P.m211p(i8);
                    this.f847P.m210p(")==");
                    this.f847P.qchar(idValuePair.f844id.charAt(i8));
                }
                this.f847P.m210p(") {");
                this.f847P.m210p(this.v_id);
                this.f847P.m210p("=");
                this.f847P.m210p(idValuePair.value);
                this.f847P.m210p("; break ");
                this.f847P.m210p(this.v_switch_label);
                this.f847P.m210p(";}");
                z4 = false;
            }
            this.f847P.m212p(' ');
            return z4;
        }
        int find_max_different_column = find_max_different_column(i, i2, i3);
        int i9 = this.columns[find_max_different_column];
        int count_different_chars = count_different_chars(i, i2, i9);
        int i10 = i3 - 1;
        this.columns[find_max_different_column] = this.columns[i10];
        if (z2) {
            this.f847P.m213nl();
            this.f847P.indent(i4);
        } else {
            this.f847P.m212p(' ');
        }
        if (count_different_chars <= this.use_if_threshold) {
            this.c_was_defined = true;
            this.f847P.m210p(this.v_c);
            this.f847P.m210p("=");
            this.f847P.m210p(this.v_s);
            this.f847P.m210p(".charAt(");
            this.f847P.m211p(i9);
            this.f847P.m210p(");");
            z3 = true;
            z = z;
        } else {
            if (!z) {
                this.f847P.m210p(this.v_label);
                this.f847P.m210p(": ");
                z = true;
            }
            this.f847P.m210p("switch (");
            this.f847P.m210p(this.v_s);
            this.f847P.m210p(".charAt(");
            this.f847P.m211p(i9);
            this.f847P.m210p(")) {");
            z3 = false;
        }
        char charAt = this.pairs[i].f844id.charAt(i9);
        int i11 = i;
        int i12 = i11;
        char c = 0;
        while (true) {
            i11++;
            if (i11 != i2) {
                c = this.pairs[i11].f844id.charAt(i9);
                if (c == charAt) {
                    continue;
                }
            }
            if (z3) {
                this.f847P.m213nl();
                this.f847P.indent(i4);
                if (i12 != i) {
                    this.f847P.m210p("else ");
                }
                this.f847P.m210p("if (");
                this.f847P.m210p(this.v_c);
                this.f847P.m210p("==");
                this.f847P.qchar(charAt);
                this.f847P.m210p(") {");
                i5 = i4 + 1;
            } else {
                this.f847P.m213nl();
                this.f847P.indent(i4);
                this.f847P.m210p("case ");
                this.f847P.qchar(charAt);
                this.f847P.m210p(":");
                i5 = i4 + 1;
            }
            boolean generate_letter_switch_r = generate_letter_switch_r(i12, i11, i10, i5, z, z3);
            if (z3) {
                this.f847P.m210p("}");
            } else if (!generate_letter_switch_r) {
                this.f847P.m210p("break ");
                this.f847P.m210p(this.v_label);
                this.f847P.m210p(";");
            }
            if (i11 == i2) {
                break;
            }
            i12 = i11;
            charAt = c;
            c = c;
        }
        if (z3) {
            this.f847P.m213nl();
            if (z2) {
                this.f847P.indent(i4 - 1);
            } else {
                this.f847P.indent(i4);
            }
        } else {
            this.f847P.m213nl();
            this.f847P.indent(i4);
            this.f847P.m210p("}");
            if (z2) {
                this.f847P.m213nl();
                this.f847P.indent(i4 - 1);
            } else {
                this.f847P.m212p(' ');
            }
        }
        this.columns[find_max_different_column] = i9;
        return false;
    }

    private static void heap4Sort(IdValuePair[] idValuePairArr, int i, int i2, int i3) {
        if (i2 > 1) {
            makeHeap4(idValuePairArr, i, i2, i3);
            while (i2 > 1) {
                i2--;
                int i4 = i + i2;
                IdValuePair idValuePair = idValuePairArr[i4];
                int i5 = i + 0;
                idValuePairArr[i4] = idValuePairArr[i5];
                idValuePairArr[i5] = idValuePair;
                heapify4(idValuePairArr, i, i2, 0, i3);
            }
        }
    }

    private static void heapify4(IdValuePair[] idValuePairArr, int i, int i2, int i3, int i4) {
        IdValuePair idValuePair = idValuePairArr[i + i3];
        int i5 = i3;
        while (true) {
            int i6 = i5 << 2;
            int i7 = i6 | 1;
            int i8 = i6 | 2;
            int i9 = i6 | 3;
            i7 = i6 + 4;
            if (i7 < i2) {
                IdValuePair idValuePair2 = idValuePairArr[i + i7];
                IdValuePair idValuePair3 = idValuePairArr[i + i8];
                IdValuePair idValuePair4 = idValuePairArr[i + i9];
                IdValuePair idValuePair5 = idValuePairArr[i + i7];
                IdValuePair idValuePair6 = idValuePair2;
                if (bigger(idValuePair3, idValuePair2, i4)) {
                    i7 = i8;
                    idValuePair6 = idValuePair3;
                }
                if (bigger(idValuePair5, idValuePair4, i4)) {
                    idValuePair4 = idValuePair5;
                } else {
                    i7 = i9;
                }
                if (bigger(idValuePair4, idValuePair6, i4)) {
                    idValuePair6 = idValuePair4;
                }
                if (!bigger(idValuePair, idValuePair6, i4)) {
                    idValuePairArr[i5 + i] = idValuePair6;
                    idValuePairArr[i + i7] = idValuePair;
                    i5 = i7;
                } else {
                    return;
                }
            } else if (i7 < i2) {
                IdValuePair idValuePair7 = idValuePairArr[i + i7];
                IdValuePair idValuePair8 = idValuePair7;
                int i10 = i7;
                if (i8 != i2) {
                    IdValuePair idValuePair9 = idValuePairArr[i + i8];
                    IdValuePair idValuePair10 = idValuePair7;
                    if (bigger(idValuePair9, idValuePair7, i4)) {
                        i7 = i8;
                        idValuePair10 = idValuePair9;
                    }
                    idValuePair8 = idValuePair10;
                    i10 = i7;
                    if (i9 != i2) {
                        IdValuePair idValuePair11 = idValuePairArr[i + i9];
                        idValuePair8 = idValuePair10;
                        i10 = i7;
                        if (bigger(idValuePair11, idValuePair10, i4)) {
                            idValuePair8 = idValuePair11;
                            i10 = i9;
                        }
                    }
                }
                if (bigger(idValuePair8, idValuePair, i4)) {
                    idValuePairArr[i5 + i] = idValuePair8;
                    idValuePairArr[i + i10] = idValuePair;
                    return;
                }
                return;
            } else {
                return;
            }
        }
    }

    private static void makeHeap4(IdValuePair[] idValuePairArr, int i, int i2, int i3) {
        int i4 = (i2 + 2) >> 2;
        while (i4 != 0) {
            i4--;
            heapify4(idValuePairArr, i, i2, i4, i3);
        }
    }

    private EvaluatorException on_same_pair_fail(IdValuePair idValuePair, IdValuePair idValuePair2) {
        int i;
        int lineNumber = idValuePair.getLineNumber();
        int lineNumber2 = idValuePair2.getLineNumber();
        if (lineNumber2 > lineNumber) {
            i = lineNumber2;
            lineNumber2 = lineNumber;
        } else {
            i = lineNumber;
        }
        return this.f848R.runtimeError(ToolErrorReporter.getMessage("msg.idswitch.same_string", idValuePair.f844id, new Integer(lineNumber2)), this.source_file, i, null, 0);
    }

    private void sort_pairs(int i, int i2, int i3) {
        heap4Sort(this.pairs, i, i2 - i, i3);
    }

    public void generateSwitch(String[] strArr, String str) {
        int length = strArr.length / 2;
        IdValuePair[] idValuePairArr = new IdValuePair[length];
        for (int i = 0; i != length; i++) {
            int i2 = i * 2;
            idValuePairArr[i] = new IdValuePair(strArr[i2], strArr[i2 + 1]);
        }
        generateSwitch(idValuePairArr, str);
    }

    public void generateSwitch(IdValuePair[] idValuePairArr, String str) {
        int length = idValuePairArr.length;
        if (length != 0) {
            this.pairs = idValuePairArr;
            this.default_value = str;
            generate_body(0, length, 2);
        }
    }

    public CodePrinter getCodePrinter() {
        return this.f847P;
    }

    public ToolErrorReporter getReporter() {
        return this.f848R;
    }

    public String getSourceFileName() {
        return this.source_file;
    }

    public void setCodePrinter(CodePrinter codePrinter) {
        this.f847P = codePrinter;
    }

    public void setReporter(ToolErrorReporter toolErrorReporter) {
        this.f848R = toolErrorReporter;
    }

    public void setSourceFileName(String str) {
        this.source_file = str;
    }
}

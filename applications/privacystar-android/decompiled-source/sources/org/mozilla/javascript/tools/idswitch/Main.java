package org.mozilla.javascript.tools.idswitch;

import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import org.apache.commons.cli.HelpFormatter;
import org.mozilla.javascript.EvaluatorException;
import org.mozilla.javascript.tools.ToolErrorReporter;
/* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/tools/idswitch/Main.class */
public class Main {
    private static final int GENERATED_TAG = 2;
    private static final String GENERATED_TAG_STR = "generated";
    private static final int NORMAL_LINE = 0;
    private static final int STRING_TAG = 3;
    private static final String STRING_TAG_STR = "string";
    private static final int SWITCH_TAG = 1;
    private static final String SWITCH_TAG_STR = "string_id_map";

    /* renamed from: P */
    private CodePrinter f845P;

    /* renamed from: R */
    private ToolErrorReporter f846R;
    private final List<IdValuePair> all_pairs = new ArrayList();
    private FileBody body;
    private String source_file;
    private int tag_definition_end;
    private int tag_value_end;
    private int tag_value_start;

    private void add_id(char[] cArr, int i, int i2, int i3, int i4) {
        IdValuePair idValuePair = new IdValuePair(new String(cArr, i3, i4 - i3), new String(cArr, i, i2 - i));
        idValuePair.setLineNumber(this.body.getLineNumber());
        this.all_pairs.add(idValuePair);
    }

    private static boolean equals(String str, char[] cArr, int i, int i2) {
        if (str.length() != i2 - i) {
            return false;
        }
        int i3 = 0;
        int i4 = i;
        while (i4 != i2) {
            if (cArr[i4] != str.charAt(i3)) {
                return false;
            }
            i4++;
            i3++;
        }
        return true;
    }

    private int exec(String[] strArr) {
        this.f846R = new ToolErrorReporter(true, System.err);
        int process_options = process_options(strArr);
        if (process_options == 0) {
            option_error(ToolErrorReporter.getMessage("msg.idswitch.no_file_argument"));
            return -1;
        } else if (process_options > 1) {
            option_error(ToolErrorReporter.getMessage("msg.idswitch.too_many_arguments"));
            return -1;
        } else {
            this.f845P = new CodePrinter();
            this.f845P.setIndentStep(4);
            this.f845P.setIndentTabSize(0);
            try {
                process_file(strArr[0]);
                return 0;
            } catch (IOException e) {
                print_error(ToolErrorReporter.getMessage("msg.idswitch.io_error", e.toString()));
                return -1;
            } catch (EvaluatorException e2) {
                return -1;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:35:0x00c6, code lost:
        if (r0 == '#') goto L_0x00c9;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int extract_line_tag_id(char[] r8, int r9, int r10) {
        /*
            Method dump skipped, instructions count: 363
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.tools.idswitch.Main.extract_line_tag_id(char[], int, int):int");
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x008e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int extract_tag_value(char[] r5, int r6, int r7, int r8) {
        /*
            r4 = this;
            r0 = r5
            r1 = r6
            r2 = r7
            int r0 = skip_white_space(r0, r1, r2)
            r9 = r0
            r0 = 1
            r10 = r0
            r0 = r9
            r1 = r7
            if (r0 == r1) goto L_0x0085
            r0 = r9
            r6 = r0
        L_0x0014:
            r0 = r6
            r1 = r7
            if (r0 == r1) goto L_0x0063
            r0 = r5
            r1 = r6
            char r0 = r0[r1]
            r11 = r0
            r0 = r11
            boolean r0 = is_white_space(r0)
            if (r0 == 0) goto L_0x0050
            r0 = r5
            r1 = r6
            r2 = 1
            int r1 = r1 + r2
            r2 = r7
            int r0 = skip_white_space(r0, r1, r2)
            r12 = r0
            r0 = r12
            r1 = r7
            if (r0 == r1) goto L_0x0048
            r0 = r5
            r1 = r12
            char r0 = r0[r1]
            r1 = 35
            if (r0 != r1) goto L_0x0048
            r0 = r6
            r11 = r0
            r0 = r12
            r6 = r0
            goto L_0x0067
        L_0x0048:
            r0 = r12
            r1 = 1
            int r0 = r0 + r1
            r6 = r0
            goto L_0x0014
        L_0x0050:
            r0 = r11
            r1 = 35
            if (r0 != r1) goto L_0x005d
            r0 = r6
            r11 = r0
            goto L_0x0067
        L_0x005d:
            int r6 = r6 + 1
            goto L_0x0014
        L_0x0063:
            r0 = r9
            r11 = r0
        L_0x0067:
            r0 = r6
            r1 = r7
            if (r0 == r1) goto L_0x0085
            r0 = r4
            r1 = r9
            r0.tag_value_start = r1
            r0 = r4
            r1 = r11
            r0.tag_value_end = r1
            r0 = r4
            r1 = r6
            r2 = 1
            int r1 = r1 + r2
            r0.tag_definition_end = r1
            r0 = r10
            r6 = r0
            goto L_0x0087
        L_0x0085:
            r0 = 0
            r6 = r0
        L_0x0087:
            r0 = r6
            if (r0 == 0) goto L_0x008e
            goto L_0x0091
        L_0x008e:
            r0 = 0
            r8 = r0
        L_0x0091:
            r0 = r8
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.tools.idswitch.Main.extract_tag_value(char[], int, int, int):int");
    }

    private void generate_java_code() {
        this.f845P.clear();
        IdValuePair[] idValuePairArr = new IdValuePair[this.all_pairs.size()];
        this.all_pairs.toArray(idValuePairArr);
        SwitchGenerator switchGenerator = new SwitchGenerator();
        switchGenerator.char_tail_test_threshold = 2;
        switchGenerator.setReporter(this.f846R);
        switchGenerator.setCodePrinter(this.f845P);
        switchGenerator.generateSwitch(idValuePairArr, "0");
    }

    private int get_tag_id(char[] cArr, int i, int i2, boolean z) {
        if (z) {
            if (equals(SWITCH_TAG_STR, cArr, i, i2)) {
                return 1;
            }
            if (equals(GENERATED_TAG_STR, cArr, i, i2)) {
                return 2;
            }
        }
        return equals(STRING_TAG_STR, cArr, i, i2) ? 3 : 0;
    }

    private String get_time_stamp() {
        return new SimpleDateFormat(" 'Last update:' yyyy-MM-dd HH:mm:ss z").format(new Date());
    }

    private static boolean is_value_type(int i) {
        return i == 3;
    }

    private static boolean is_white_space(int i) {
        return i == 32 || i == 9;
    }

    private void look_for_id_definitions(char[] cArr, int i, int i2, boolean z) {
        int skip_name_char;
        int skip_white_space;
        int i3;
        int i4;
        int skip_white_space2 = skip_white_space(cArr, i, i2);
        int skip_matched_prefix = skip_matched_prefix("Id_", cArr, skip_white_space2, i2);
        if (skip_matched_prefix >= 0 && skip_matched_prefix != (skip_name_char = skip_name_char(cArr, skip_matched_prefix, i2)) && (skip_white_space = skip_white_space(cArr, skip_name_char, i2)) != i2 && cArr[skip_white_space] == '=') {
            if (z) {
                i3 = this.tag_value_start;
                i4 = this.tag_value_end;
            } else {
                i4 = skip_name_char;
                i3 = skip_matched_prefix;
            }
            add_id(cArr, skip_white_space2, skip_name_char, i3, i4);
        }
    }

    private int look_for_slash_slash(char[] cArr, int i, int i2) {
        while (i + 2 <= i2) {
            int i3 = i + 1;
            if (cArr[i] == '/') {
                int i4 = i3 + 1;
                i = i4;
                if (cArr[i3] == '/') {
                    return i4;
                }
            } else {
                i = i3;
            }
        }
        return i2;
    }

    public static void main(String[] strArr) {
        System.exit(new Main().exec(strArr));
    }

    private void option_error(String str) {
        print_error(ToolErrorReporter.getMessage("msg.idswitch.bad_invocation", str));
    }

    private void print_error(String str) {
        System.err.println(str);
    }

    private void process_file() {
        char[] buffer = this.body.getBuffer();
        this.body.startLineLoop();
        int i = 0;
        int i2 = -1;
        int i3 = -1;
        int i4 = -1;
        int i5 = -1;
        while (this.body.nextLine()) {
            int lineBegin = this.body.getLineBegin();
            i5 = this.body.getLineEnd();
            int extract_line_tag_id = extract_line_tag_id(buffer, lineBegin, i5);
            boolean z = true;
            switch (i) {
                case 0:
                    if (extract_line_tag_id != 1) {
                        i = i;
                        i2 = i2;
                        i3 = i3;
                        i4 = i4;
                        i5 = i5;
                        if (extract_line_tag_id == -1) {
                            i = i;
                            i2 = i2;
                            i3 = i3;
                            i4 = i4;
                            i5 = i5;
                            break;
                        }
                    } else {
                        this.all_pairs.clear();
                        i = 1;
                        i2 = -1;
                        i3 = i3;
                        i4 = i4;
                        i5 = i5;
                    }
                    z = false;
                    break;
                case 1:
                    if (extract_line_tag_id == 0) {
                        look_for_id_definitions(buffer, lineBegin, i5, false);
                        i = i;
                        i2 = i2;
                        i3 = i3;
                        i4 = i4;
                        i5 = i5;
                    } else if (extract_line_tag_id == 3) {
                        look_for_id_definitions(buffer, lineBegin, i5, true);
                        i = i;
                        i2 = i2;
                        i3 = i3;
                        i4 = i4;
                        i5 = i5;
                    } else if (extract_line_tag_id != 2) {
                        i = i;
                        i2 = i2;
                        i3 = i3;
                        i4 = i4;
                        i5 = i5;
                        if (extract_line_tag_id == -1) {
                            if (i2 >= 0 && !this.all_pairs.isEmpty()) {
                                generate_java_code();
                                if (this.body.setReplacement(i2, i3, this.f845P.toString())) {
                                    this.body.setReplacement(i4, i5, get_time_stamp());
                                }
                            }
                            i = 0;
                            i2 = i2;
                            i3 = i3;
                            i4 = i4;
                            i5 = i5;
                        }
                    } else if (i2 >= 0) {
                        i = i;
                        i2 = i2;
                        i3 = i3;
                        i4 = i4;
                        i5 = i5;
                        break;
                    } else {
                        i4 = this.tag_definition_end;
                        i = 2;
                        i2 = i2;
                        i3 = i3;
                    }
                    z = false;
                    break;
                case 2:
                    if (extract_line_tag_id == 0) {
                        i = i;
                        i2 = i2;
                        i3 = i3;
                        i4 = i4;
                        i5 = i5;
                        if (i2 < 0) {
                            i2 = lineBegin;
                            i = i;
                            i3 = i3;
                            i4 = i4;
                            i5 = i5;
                        }
                    } else {
                        i = i;
                        i2 = i2;
                        i3 = i3;
                        i4 = i4;
                        i5 = i5;
                        if (extract_line_tag_id == -2) {
                            i2 = i2;
                            if (i2 < 0) {
                                i2 = lineBegin;
                            }
                            i = 1;
                            i3 = lineBegin;
                            i4 = i4;
                            i5 = i5;
                        }
                    }
                    z = false;
                    break;
                default:
                    i = i;
                    i2 = i2;
                    i3 = i3;
                    i4 = i4;
                    i5 = i5;
                    z = false;
                    break;
            }
            if (z) {
                throw this.f846R.runtimeError(ToolErrorReporter.getMessage("msg.idswitch.bad_tag_order", tag_name(extract_line_tag_id)), this.source_file, this.body.getLineNumber(), null, 0);
            }
        }
        if (i != 0) {
            throw this.f846R.runtimeError(ToolErrorReporter.getMessage("msg.idswitch.file_end_in_switch", tag_name(i)), this.source_file, this.body.getLineNumber(), null, 0);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x00e6, code lost:
        r7 = 1;
        r14 = r8;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int process_options(java.lang.String[] r5) {
        /*
            Method dump skipped, instructions count: 288
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.tools.idswitch.Main.process_options(java.lang.String[]):int");
    }

    private int remove_nulls(String[] strArr) {
        int length = strArr.length;
        int i = 0;
        while (i != length && strArr[i] != null) {
            i++;
        }
        int i2 = i;
        if (i != length) {
            int i3 = i + 1;
            while (true) {
                i2 = i;
                if (i3 == length) {
                    break;
                }
                String str = strArr[i3];
                i = i;
                if (str != null) {
                    strArr[i] = str;
                    i++;
                }
                i3++;
            }
        }
        return i2;
    }

    private void show_usage() {
        System.out.println(ToolErrorReporter.getMessage("msg.idswitch.usage"));
        System.out.println();
    }

    private void show_version() {
        System.out.println(ToolErrorReporter.getMessage("msg.idswitch.version"));
    }

    private static int skip_matched_prefix(String str, char[] cArr, int i, int i2) {
        int length = str.length();
        int i3 = -1;
        if (length <= i2 - i) {
            int i4 = 0;
            while (true) {
                if (i4 == length) {
                    i3 = i;
                    break;
                } else if (str.charAt(i4) != cArr[i]) {
                    i3 = -1;
                    break;
                } else {
                    i4++;
                    i++;
                }
            }
        }
        return i3;
    }

    private static int skip_name_char(char[] cArr, int i, int i2) {
        char c;
        while (i != i2 && (('a' <= (c = cArr[i]) && c <= 'z') || (('A' <= c && c <= 'Z') || (('0' <= c && c <= '9') || c == '_')))) {
            i++;
        }
        return i;
    }

    private static int skip_white_space(char[] cArr, int i, int i2) {
        while (i != i2 && is_white_space(cArr[i])) {
            i++;
        }
        return i;
    }

    private static String tag_name(int i) {
        switch (i) {
            case -2:
                return "/generated";
            case -1:
                return "/string_id_map";
            case 0:
            default:
                return "";
            case 1:
                return SWITCH_TAG_STR;
            case 2:
                return GENERATED_TAG_STR;
        }
    }

    /* JADX WARN: Finally extract failed */
    void process_file(String str) throws IOException {
        this.source_file = str;
        this.body = new FileBody();
        InputStream fileInputStream = str.equals(HelpFormatter.DEFAULT_OPT_PREFIX) ? System.in : new FileInputStream(str);
        try {
            this.body.readData(new InputStreamReader(fileInputStream, "ASCII"));
            fileInputStream.close();
            process_file();
            if (this.body.wasModified()) {
                OutputStream fileOutputStream = str.equals(HelpFormatter.DEFAULT_OPT_PREFIX) ? System.out : new FileOutputStream(str);
                try {
                    OutputStreamWriter outputStreamWriter = new OutputStreamWriter(fileOutputStream);
                    this.body.writeData(outputStreamWriter);
                    outputStreamWriter.flush();
                } finally {
                    fileOutputStream.close();
                }
            }
        } catch (Throwable th) {
            fileInputStream.close();
            throw th;
        }
    }
}

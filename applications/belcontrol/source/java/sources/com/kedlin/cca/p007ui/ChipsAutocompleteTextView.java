package com.kedlin.cca.p007ui;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.text.Editable;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.style.ImageSpan;
import android.util.AttributeSet;
import android.view.View;
import android.widget.AdapterView;
import android.widget.MultiAutoCompleteTextView;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.Collections;
import p000.fa1;
import p000.r71;
/* renamed from: com.kedlin.cca.ui.ChipsAutocompleteTextView */
/* loaded from: classes3-dex2jar.jar:com/kedlin/cca/ui/ChipsAutocompleteTextView.class */
public class ChipsAutocompleteTextView extends MultiAutoCompleteTextView implements AdapterView.OnItemClickListener {

    /* renamed from: a */
    public boolean f3959a = false;

    /* renamed from: b */
    public MultiAutoCompleteTextView.CommaTokenizer f3960b;

    /* renamed from: com.kedlin.cca.ui.ChipsAutocompleteTextView$a */
    /* loaded from: classes3-dex2jar.jar:com/kedlin/cca/ui/ChipsAutocompleteTextView$a.class */
    public class C0670a implements TextWatcher {
        public C0670a() {
            ChipsAutocompleteTextView.this = r4;
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            if (!ChipsAutocompleteTextView.this.f3959a && i2 == 0 && i3 == 1 && charSequence.charAt(i) == ',') {
                ChipsAutocompleteTextView.this.setChips();
            }
        }
    }

    /* renamed from: com.kedlin.cca.ui.ChipsAutocompleteTextView$b */
    /* loaded from: classes3-dex2jar.jar:com/kedlin/cca/ui/ChipsAutocompleteTextView$b.class */
    public class View$OnFocusChangeListenerC0671b implements View.OnFocusChangeListener {
        public View$OnFocusChangeListenerC0671b() {
            ChipsAutocompleteTextView.this = r4;
        }

        @Override // android.view.View.OnFocusChangeListener
        public void onFocusChange(View view, boolean z) {
            if (!z) {
                ChipsAutocompleteTextView.this.setChips();
            }
        }
    }

    /* renamed from: com.kedlin.cca.ui.ChipsAutocompleteTextView$c */
    /* loaded from: classes3-dex2jar.jar:com/kedlin/cca/ui/ChipsAutocompleteTextView$c.class */
    public class C0672c extends ImageSpan {

        /* renamed from: a */
        public C0673d f3963a;

        public C0672c(ChipsAutocompleteTextView chipsAutocompleteTextView, Drawable drawable, C0673d c0673d) {
            super(drawable);
            this.f3963a = c0673d;
        }
    }

    /* renamed from: com.kedlin.cca.ui.ChipsAutocompleteTextView$d */
    /* loaded from: classes3-dex2jar.jar:com/kedlin/cca/ui/ChipsAutocompleteTextView$d.class */
    public class C0673d {

        /* renamed from: a */
        public String f3964a;

        /* renamed from: b */
        public i91 f3965b;

        public C0673d(ChipsAutocompleteTextView chipsAutocompleteTextView, String str) {
            if (!str.contains(";;")) {
                i91 m1800o = fa1.C1420e.m1800o(str);
                this.f3965b = m1800o;
                this.f3964a = m1800o.m1601m();
                return;
            }
            String[] split = TextUtils.split(str, ";;");
            this.f3964a = split[0];
            this.f3965b = fa1.C1420e.m1800o(split[1]);
        }

        public String toString() {
            return ".";
        }
    }

    public ChipsAutocompleteTextView(Context context) {
        super(context);
        m4200b();
    }

    public ChipsAutocompleteTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m4200b();
    }

    public ChipsAutocompleteTextView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m4200b();
    }

    /* renamed from: b */
    public void m4200b() {
        setOnItemClickListener(this);
        addTextChangedListener(new C0670a());
        setOnFocusChangeListener(new View$OnFocusChangeListenerC0671b());
        MultiAutoCompleteTextView.CommaTokenizer commaTokenizer = new MultiAutoCompleteTextView.CommaTokenizer();
        this.f3960b = commaTokenizer;
        setTokenizer(commaTokenizer);
    }

    public i91[] getAddresses() {
        int i = 0;
        if (getText() == null) {
            return new i91[0];
        }
        C0672c[] c0672cArr = (C0672c[]) new SpannableStringBuilder(getText()).getSpans(0, length(), C0672c.class);
        if (c0672cArr == null) {
            return new i91[0];
        }
        i91[] i91VarArr = new i91[c0672cArr.length];
        int length = c0672cArr.length;
        int i2 = 0;
        while (i < length) {
            i91VarArr[i2] = c0672cArr[i].f3963a.f3965b;
            i++;
            i2++;
        }
        return i91VarArr;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        setChips();
    }

    @Override // android.widget.TextView
    public boolean onTextContextMenuItem(int i) {
        boolean onTextContextMenuItem = super.onTextContextMenuItem(i);
        setChips();
        return onTextContextMenuItem;
    }

    public void setChips() {
        if (getText() == null) {
            return;
        }
        this.f3959a = true;
        String trim = getText().toString().trim();
        int length = trim.length() - 1;
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(getText());
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        while (length > 0) {
            int findTokenStart = this.f3960b.findTokenStart(trim, length);
            int findTokenEnd = this.f3960b.findTokenEnd(trim, findTokenStart);
            C0672c[] c0672cArr = (C0672c[]) spannableStringBuilder.getSpans(findTokenStart, findTokenEnd, C0672c.class);
            C0673d c0673d = (c0672cArr == null || c0672cArr.length <= 0) ? new C0673d(this, trim.subSequence(findTokenStart, findTokenEnd).toString()) : c0672cArr[0].f3963a;
            if (findTokenEnd - findTokenStart > 0 && !c0673d.f3965b.m1600n() && !arrayList.contains(c0673d.f3965b.toString())) {
                arrayList.add(c0673d.f3965b.toString());
                arrayList2.add(c0673d);
            }
            length = findTokenStart - 1;
        }
        arrayList.clear();
        Collections.reverse(arrayList2);
        C0673d[] c0673dArr = (C0673d[]) arrayList2.toArray(new C0673d[arrayList2.size()]);
        String join = TextUtils.join(",", arrayList2.toArray());
        String str = join;
        if (!TextUtils.isEmpty(join)) {
            str = join + ",";
        }
        SpannableStringBuilder spannableStringBuilder2 = new SpannableStringBuilder(str);
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        int i = 0;
        for (C0673d c0673d2 : c0673dArr) {
            TextView textView = new TextView(getContext());
            textView.setBackgroundResource(2131230947);
            textView.setTextColor(getResources().getColor(2131100102));
            int m1093c = oe1.m1093c(4);
            textView.setPadding(m1093c, m1093c, m1093c, m1093c);
            textView.setTextSize(2, r71.EnumC1638a.f8001x0.m693c());
            textView.setText(c0673d2.f3964a);
            textView.measure(makeMeasureSpec, makeMeasureSpec);
            textView.layout(0, 0, textView.getMeasuredWidth(), textView.getMeasuredHeight());
            Canvas canvas = new Canvas(Bitmap.createBitmap(textView.getWidth(), textView.getHeight(), Bitmap.Config.ARGB_8888));
            canvas.translate(-textView.getScrollX(), -textView.getScrollY());
            textView.draw(canvas);
            textView.setDrawingCacheEnabled(true);
            textView.buildDrawingCache();
            Bitmap drawingCache = textView.getDrawingCache();
            if (drawingCache != null) {
                Bitmap copy = drawingCache.copy(Bitmap.Config.ARGB_8888, true);
                textView.destroyDrawingCache();
                BitmapDrawable bitmapDrawable = new BitmapDrawable(getResources(), copy);
                bitmapDrawable.setBounds(0, 0, bitmapDrawable.getIntrinsicWidth(), bitmapDrawable.getIntrinsicHeight());
                spannableStringBuilder2.setSpan(new C0672c(this, bitmapDrawable, c0673d2), i, c0673d2.toString().length() + i, 33);
            }
            i = i + c0673d2.toString().length() + 1;
        }
        setText(spannableStringBuilder2);
        setSelection(getText().length());
        this.f3959a = false;
    }
}

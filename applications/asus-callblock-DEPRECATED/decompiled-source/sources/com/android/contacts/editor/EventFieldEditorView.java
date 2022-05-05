package com.android.contacts.editor;

import android.app.Dialog;
import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.widget.TextView;
import com.android.contacts.datepicker.a;
import com.android.contacts.model.RawContactDelta;
import com.android.contacts.model.a.b;
import com.android.contacts.model.account.a;
import com.android.contacts.util.DateUtils;
import com.asus.updatesdk.BuildConfig;
import java.text.ParsePosition;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;
/* loaded from: classes-dex2jar.jar:com/android/contacts/editor/EventFieldEditorView.class */
public class EventFieldEditorView extends LabeledEditorView {
    private String i;
    private int j;
    private int k;
    private TextView l;

    public EventFieldEditorView(Context context) {
        super(context);
    }

    public EventFieldEditorView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public EventFieldEditorView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public static int g() {
        return 8;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k() {
        String formatDate = DateUtils.formatDate(getContext(), this.f1157b.a(this.f1156a.o.get(0).f2004a), false);
        if (TextUtils.isEmpty(formatDate)) {
            this.l.setText(this.i);
            this.l.setTextColor(this.k);
            setDeleteButtonVisible(false);
            return;
        }
        this.l.setText(formatDate);
        this.l.setTextColor(this.j);
        setDeleteButtonVisible(true);
    }

    @Override // com.android.contacts.editor.d
    public final boolean a() {
        return TextUtils.isEmpty(this.f1157b.a(this.f1156a.o.get(0).f2004a));
    }

    @Override // com.android.contacts.editor.d
    public final void c() {
        this.l.setText(this.i);
        this.l.setTextColor(this.k);
        a(this.f1156a.o.get(0).f2004a, BuildConfig.FLAVOR);
    }

    @Override // com.android.contacts.editor.LabeledEditorView, com.android.contacts.util.DialogManager.DialogShowingView
    public Dialog createDialog(Bundle bundle) {
        Dialog dialog;
        int i;
        int i2;
        if (bundle == null) {
            throw new IllegalArgumentException("bundle must not be null");
        }
        switch (bundle.getInt("dialog_id")) {
            case 2131296708:
                final String str = this.f1156a.o.get(0).f2004a;
                String a2 = this.f1157b.a(str);
                final b bVar = this.f1156a;
                Calendar instance = Calendar.getInstance(DateUtils.UTC_TIMEZONE, Locale.US);
                int i3 = instance.get(1);
                final boolean z = ((a.e) super.h()) == null ? false : ((a.e) super.h()).f;
                if (TextUtils.isEmpty(a2)) {
                    i2 = 0;
                    i = 1;
                } else {
                    ParsePosition parsePosition = new ParsePosition(0);
                    Date parse = bVar.s.parse(a2, parsePosition);
                    Date date = parse;
                    if (parse == null) {
                        date = DateUtils.parseDate(a2);
                    }
                    if (date != null) {
                        instance.setTime(date);
                        i3 = instance.get(1);
                    } else if (DateUtils.NO_YEAR_DATE_FEB29TH.equals(a2)) {
                        if (z) {
                            i3 = com.android.contacts.datepicker.a.f809a;
                        }
                        i = 29;
                        i2 = 1;
                    } else {
                        Date parse2 = bVar.r.parse(a2, parsePosition);
                        if (parse2 == null) {
                            dialog = null;
                            break;
                        } else {
                            instance.setTime(parse2);
                            if (z) {
                                i3 = com.android.contacts.datepicker.a.f809a;
                            }
                        }
                    }
                    i2 = instance.get(2);
                    i = instance.get(5);
                }
                dialog = new com.android.contacts.datepicker.a(getContext(), new a.AbstractC0031a() { // from class: com.android.contacts.editor.EventFieldEditorView.2
                    @Override // com.android.contacts.datepicker.a.AbstractC0031a
                    public final void a(int i4, int i5, int i6) {
                        if (i4 != 0 || z) {
                            Calendar instance2 = Calendar.getInstance(DateUtils.UTC_TIMEZONE, Locale.US);
                            instance2.clear();
                            instance2.set(i4 == com.android.contacts.datepicker.a.f809a ? 2000 : i4, i5, i6, 8, 0, 0);
                            EventFieldEditorView.this.a(str, i4 == 0 ? bVar.r.format(instance2.getTime()) : bVar.s.format(instance2.getTime()));
                            EventFieldEditorView.this.k();
                            return;
                        }
                        throw new IllegalStateException();
                    }
                }, i3, i2, i, z);
                break;
            default:
                dialog = super.createDialog(bundle);
                break;
        }
        return dialog;
    }

    @Override // com.android.contacts.editor.d
    public final void d() {
        b(2131296708);
    }

    @Override // com.android.contacts.editor.LabeledEditorView
    protected final void e() {
        this.l.requestFocus();
    }

    @Override // com.android.contacts.editor.LabeledEditorView
    protected final void f() {
        String str = this.f1156a.o.get(0).f2004a;
        String a2 = this.f1157b.a(str);
        b bVar = this.f1156a;
        Calendar instance = Calendar.getInstance(DateUtils.UTC_TIMEZONE, Locale.US);
        int i = instance.get(1);
        if (!(((a.e) super.h()) == null ? false : ((a.e) super.h()).f) && !TextUtils.isEmpty(a2)) {
            Date parse = bVar.r.parse(a2, new ParsePosition(0));
            if (parse != null) {
                instance.setTime(parse);
                instance.set(i, instance.get(2), instance.get(5), 8, 0, 0);
                a(str, bVar.s.format(instance.getTime()));
                k();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.editor.LabeledEditorView
    public final /* bridge */ /* synthetic */ a.d h() {
        return (a.e) super.h();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.contacts.editor.LabeledEditorView, android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        Resources resources = getContext().getResources();
        this.j = resources.getColor(2131034392);
        this.k = resources.getColor(2131034400);
        this.i = getContext().getString(2131755616);
        this.l = (TextView) findViewById(2131296639);
        this.l.setOnClickListener(new View.OnClickListener() { // from class: com.android.contacts.editor.EventFieldEditorView.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                EventFieldEditorView.this.b(2131296708);
            }
        });
    }

    @Override // com.android.contacts.editor.LabeledEditorView, android.view.View
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        this.l.setEnabled(!this.d && z);
    }

    @Override // com.android.contacts.editor.LabeledEditorView, com.android.contacts.editor.d
    public void setValues(b bVar, RawContactDelta.ValuesDelta valuesDelta, RawContactDelta rawContactDelta, boolean z, ViewIdGenerator viewIdGenerator) {
        boolean z2 = true;
        if (bVar.o.size() != 1) {
            throw new IllegalStateException("kind must have 1 field");
        }
        super.setValues(bVar, valuesDelta, rawContactDelta, z, viewIdGenerator);
        TextView textView = this.l;
        if (!isEnabled() || z) {
            z2 = false;
        }
        textView.setEnabled(z2);
        k();
    }
}

package com.asus.contacts.fonts;

import android.app.Dialog;
import android.app.DialogFragment;
import android.app.FragmentManager;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Configuration;
import android.graphics.Typeface;
import android.os.Bundle;
import android.util.Log;
import android.view.ContextThemeWrapper;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckedTextView;
import android.widget.RadioButton;
import android.widget.TextView;
/* loaded from: classes-dex2jar.jar:com/asus/contacts/fonts/b.class */
public abstract class b extends DialogFragment {

    /* renamed from: a  reason: collision with root package name */
    protected Context f2638a;

    /* renamed from: b  reason: collision with root package name */
    public Typeface f2639b;
    private boolean d = false;
    public float c = -1.0f;
    private float e = this.c;

    /* JADX INFO: Access modifiers changed from: protected */
    public static Dialog a(final Dialog dialog, final Typeface typeface) {
        if (typeface != null) {
            dialog.setOnShowListener(new DialogInterface.OnShowListener() { // from class: com.asus.contacts.fonts.b.1
                @Override // android.content.DialogInterface.OnShowListener
                public final void onShow(DialogInterface dialogInterface) {
                    View decorView = dialog.getWindow().getDecorView();
                    if (decorView != null) {
                        b.a(decorView, typeface);
                    } else {
                        Log.d("BaseIconSettingsDialog", "[setCustomFont] failed to get root view for dialog: " + dialog);
                    }
                }
            });
        }
        return dialog;
    }

    static /* synthetic */ void a(View view, Typeface typeface) {
        while (!(view instanceof ViewGroup)) {
            if (!(view instanceof CheckedTextView) && (view instanceof TextView)) {
                view = (TextView) view;
            } else {
                return;
            }
        }
        a((ViewGroup) view, typeface);
    }

    private static void a(ViewGroup viewGroup, Typeface typeface) {
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = viewGroup.getChildAt(i);
            if (!(childAt instanceof CheckedTextView)) {
                if (childAt instanceof TextView) {
                    if (!(childAt instanceof RadioButton)) {
                        ((TextView) childAt).setTypeface(typeface);
                    }
                } else if (childAt instanceof ViewGroup) {
                    a((ViewGroup) childAt, typeface);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a() {
        this.f2638a = new ContextThemeWrapper(getActivity(), a.a());
        float f = this.c;
        if (f > 0.0f) {
            Configuration configuration = this.f2638a.getResources().getConfiguration();
            this.e = configuration.fontScale;
            configuration.fontScale = f;
            this.f2638a.getResources().updateConfiguration(configuration, null);
        }
    }

    @Override // android.app.DialogFragment, android.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
    }

    @Override // android.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        this.d = false;
        if (this.e > 0.0f) {
            Configuration configuration = this.f2638a.getResources().getConfiguration();
            configuration.fontScale = this.e;
            this.f2638a.getResources().updateConfiguration(configuration, null);
        }
        super.onDismiss(dialogInterface);
    }

    @Override // android.app.Fragment
    public void onPause() {
        super.onPause();
        dismiss();
    }

    @Override // android.app.DialogFragment
    public void show(FragmentManager fragmentManager, String str) {
        super.show(fragmentManager, str);
        this.d = true;
    }
}

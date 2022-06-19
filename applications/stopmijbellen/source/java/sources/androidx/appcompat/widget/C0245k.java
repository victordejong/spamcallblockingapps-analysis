package androidx.appcompat.widget;

import android.app.Activity;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.text.Editable;
import android.text.method.KeyListener;
import android.text.method.NumberKeyListener;
import android.util.AttributeSet;
import android.util.Log;
import android.view.ActionMode;
import android.view.DragEvent;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.textclassifier.TextClassifier;
import android.widget.EditText;
import me.zhanghai.android.materialprogressbar.C3681R;
import p124i4.C3102d;
import p163m0.AbstractC3582o;
import p163m0.C3563c;
import p163m0.C3589v;
import p185o0.C3806a;
import p185o0.C3807b;
import p185o0.C3808c;
import p185o0.C3809d;
import p196p0.C3992g;
import p196p0.C3994h;
import p270w0.C4712a;
/* renamed from: androidx.appcompat.widget.k */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/k.class */
public class C0245k extends EditText implements AbstractC3582o {

    /* renamed from: a */
    public final C0221e f994a;

    /* renamed from: b */
    public final C0196a0 f995b;

    /* renamed from: c */
    public final C0302z f996c;

    /* renamed from: d */
    public final C3994h f997d;

    /* renamed from: e */
    public final C0249l f998e;

    public C0245k(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C3681R.attr.editTextStyle);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0245k(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        C0287w0.m8420a(context);
        C0283u0.m8427a(this, getContext());
        C0221e c0221e = new C0221e(this);
        this.f994a = c0221e;
        c0221e.m8545d(attributeSet, i);
        C0196a0 c0196a0 = new C0196a0(this);
        this.f995b = c0196a0;
        c0196a0.m8583e(attributeSet, i);
        c0196a0.m8586b();
        this.f996c = new C0302z(this);
        this.f997d = new C3994h();
        C0249l c0249l = new C0249l(this);
        this.f998e = c0249l;
        c0249l.m8470c(attributeSet, i);
        KeyListener keyListener = getKeyListener();
        if (!(keyListener instanceof NumberKeyListener)) {
            boolean isFocusable = super.isFocusable();
            int inputType = super.getInputType();
            KeyListener m8471b = c0249l.m8471b(keyListener);
            if (m8471b == keyListener) {
                return;
            }
            super.setKeyListener(m8471b);
            super.setRawInputType(inputType);
            super.setFocusable(isFocusable);
        }
    }

    @Override // p163m0.AbstractC3582o
    /* renamed from: a */
    public C3563c mo2124a(C3563c c3563c) {
        return this.f997d.mo1553a(this, c3563c);
    }

    @Override // android.widget.TextView, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        C0221e c0221e = this.f994a;
        if (c0221e != null) {
            c0221e.m8548a();
        }
        C0196a0 c0196a0 = this.f995b;
        if (c0196a0 != null) {
            c0196a0.m8586b();
        }
    }

    @Override // android.widget.TextView
    public ActionMode.Callback getCustomSelectionActionModeCallback() {
        return C3992g.m1555g(super.getCustomSelectionActionModeCallback());
    }

    public ColorStateList getSupportBackgroundTintList() {
        C0221e c0221e = this.f994a;
        return c0221e != null ? c0221e.m8547b() : null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        C0221e c0221e = this.f994a;
        return c0221e != null ? c0221e.m8546c() : null;
    }

    @Override // android.widget.EditText, android.widget.TextView
    public Editable getText() {
        return Build.VERSION.SDK_INT >= 28 ? super.getText() : super.getEditableText();
    }

    @Override // android.widget.TextView
    public TextClassifier getTextClassifier() {
        C0302z c0302z;
        return (Build.VERSION.SDK_INT >= 28 || (c0302z = this.f996c) == null) ? super.getTextClassifier() : c0302z.m8401b();
    }

    @Override // android.widget.TextView, android.view.View
    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        String[] strArr;
        InputConnection onCreateInputConnection = super.onCreateInputConnection(editorInfo);
        this.f995b.m8581g(this, onCreateInputConnection, editorInfo);
        C3102d.m2648D(onCreateInputConnection, editorInfo, this);
        C3807b c3807b = onCreateInputConnection;
        if (onCreateInputConnection != null) {
            int i = Build.VERSION.SDK_INT;
            c3807b = onCreateInputConnection;
            if (i <= 30) {
                String[] m2112l = C3589v.m2112l(this);
                c3807b = onCreateInputConnection;
                if (m2112l != null) {
                    if (i >= 25) {
                        editorInfo.contentMimeTypes = m2112l;
                    } else {
                        if (editorInfo.extras == null) {
                            editorInfo.extras = new Bundle();
                        }
                        editorInfo.extras.putStringArray("androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_MIME_TYPES", m2112l);
                        editorInfo.extras.putStringArray("android.support.v13.view.inputmethod.EditorInfoCompat.CONTENT_MIME_TYPES", m2112l);
                    }
                    C3809d c3809d = new C3809d(this);
                    if (i >= 25) {
                        c3807b = new C3807b(onCreateInputConnection, false, c3809d);
                    } else {
                        if (i >= 25) {
                            strArr = editorInfo.contentMimeTypes;
                            if (strArr == null) {
                                strArr = C3806a.f12282a;
                            }
                        } else {
                            Bundle bundle = editorInfo.extras;
                            if (bundle == null) {
                                strArr = C3806a.f12282a;
                            } else {
                                String[] stringArray = bundle.getStringArray("androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_MIME_TYPES");
                                strArr = stringArray;
                                if (stringArray == null) {
                                    strArr = editorInfo.extras.getStringArray("android.support.v13.view.inputmethod.EditorInfoCompat.CONTENT_MIME_TYPES");
                                }
                                if (strArr == null) {
                                    strArr = C3806a.f12282a;
                                }
                            }
                        }
                        c3807b = strArr.length == 0 ? onCreateInputConnection : new C3808c(onCreateInputConnection, false, c3809d);
                    }
                }
            }
        }
        return this.f998e.m8469e(c3807b, editorInfo);
    }

    @Override // android.widget.TextView, android.view.View
    public boolean onDragEvent(DragEvent dragEvent) {
        Activity activity;
        int i = Build.VERSION.SDK_INT;
        boolean z = false;
        if (i < 31) {
            z = false;
            if (i >= 24) {
                z = false;
                if (dragEvent.getLocalState() == null) {
                    if (C3589v.m2112l(this) == null) {
                        z = false;
                    } else {
                        Context context = getContext();
                        while (true) {
                            Context context2 = context;
                            if (!(context2 instanceof ContextWrapper)) {
                                activity = null;
                                break;
                            } else if (context2 instanceof Activity) {
                                activity = (Activity) context2;
                                break;
                            } else {
                                context = ((ContextWrapper) context2).getBaseContext();
                            }
                        }
                        if (activity == null) {
                            Log.i("ReceiveContent", "Can't handle drop: no activity: view=" + this);
                            z = false;
                        } else if (dragEvent.getAction() == 1) {
                            z = false;
                        } else {
                            z = false;
                            if (dragEvent.getAction() == 3) {
                                z = C0282u.m8429a(dragEvent, this, activity);
                            }
                        }
                    }
                }
            }
        }
        if (z) {
            return true;
        }
        return super.onDragEvent(dragEvent);
    }

    @Override // android.widget.TextView
    public boolean onTextContextMenuItem(int i) {
        int i2 = Build.VERSION.SDK_INT;
        boolean z = false;
        if (i2 < 31) {
            z = false;
            if (C3589v.m2112l(this) != null) {
                if (i == 16908322 || i == 16908337) {
                    ClipboardManager clipboardManager = (ClipboardManager) getContext().getSystemService("clipboard");
                    ClipData primaryClip = clipboardManager == null ? null : clipboardManager.getPrimaryClip();
                    if (primaryClip != null && primaryClip.getItemCount() > 0) {
                        C3563c.C3564a c3564a = i2 >= 31 ? new C3563c.C3564a(primaryClip, 1) : new C3563c.C3566c(primaryClip, 1);
                        c3564a.mo2148b(i == 16908322 ? 0 : 1);
                        C3589v.m2107q(this, c3564a.build());
                    }
                    z = true;
                } else {
                    z = false;
                }
            }
        }
        if (z) {
            return true;
        }
        return super.onTextContextMenuItem(i);
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        C0221e c0221e = this.f994a;
        if (c0221e != null) {
            c0221e.m8544e();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        C0221e c0221e = this.f994a;
        if (c0221e != null) {
            c0221e.m8543f(i);
        }
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(C3992g.m1554h(this, callback));
    }

    public void setEmojiCompatEnabled(boolean z) {
        ((C4712a) this.f998e.f1012c).f14564a.mo547c(z);
    }

    @Override // android.widget.TextView
    public void setKeyListener(KeyListener keyListener) {
        super.setKeyListener(this.f998e.m8471b(keyListener));
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        C0221e c0221e = this.f994a;
        if (c0221e != null) {
            c0221e.m8541h(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        C0221e c0221e = this.f994a;
        if (c0221e != null) {
            c0221e.m8540i(mode);
        }
    }

    @Override // android.widget.TextView
    public void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        C0196a0 c0196a0 = this.f995b;
        if (c0196a0 != null) {
            c0196a0.m8582f(context, i);
        }
    }

    @Override // android.widget.TextView
    public void setTextClassifier(TextClassifier textClassifier) {
        C0302z c0302z;
        if (Build.VERSION.SDK_INT >= 28 || (c0302z = this.f996c) == null) {
            super.setTextClassifier(textClassifier);
        } else {
            c0302z.f1162b = textClassifier;
        }
    }
}

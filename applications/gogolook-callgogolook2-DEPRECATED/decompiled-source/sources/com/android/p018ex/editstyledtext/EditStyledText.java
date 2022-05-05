package com.android.p018ex.editstyledtext;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.RectShape;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.ResultReceiver;
import android.text.ClipboardManager;
import android.text.Editable;
import android.text.Layout;
import android.text.NoCopySpan;
import android.text.Selection;
import android.text.Spannable;
import android.text.SpannableStringBuilder;
import android.text.method.ArrowKeyMovementMethod;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.AlignmentSpan;
import android.text.style.BackgroundColorSpan;
import android.text.style.CharacterStyle;
import android.text.style.DynamicDrawableSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.ImageSpan;
import android.text.style.ParagraphStyle;
import android.text.style.QuoteSpan;
import android.text.style.UnderlineSpan;
import android.util.AttributeSet;
import android.util.Log;
import android.view.ContextMenu;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputConnectionWrapper;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.view.ViewCompat;
import androidx.media2.exoplayer.external.text.webvtt.CssParser;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import p081h.p093b.p099c.p102b.C5616b;
import p081h.p093b.p099c.p102b.C5617c;
import p081h.p093b.p099c.p102b.C5618d;
/* renamed from: com.android.ex.editstyledtext.EditStyledText */
/* loaded from: classes-dex2jar.jar:com/android/ex/editstyledtext/EditStyledText.class */
public class EditStyledText extends EditText {

    /* renamed from: g */
    public static CharSequence f928g;

    /* renamed from: h */
    public static CharSequence f929h;

    /* renamed from: i */
    public static CharSequence f930i;

    /* renamed from: j */
    public static final NoCopySpan.Concrete f931j = new NoCopySpan.Concrete();

    /* renamed from: a */
    public float f932a = 0.0f;

    /* renamed from: b */
    public ArrayList<AbstractC1542d> f933b;

    /* renamed from: c */
    public Drawable f934c;

    /* renamed from: d */
    public C1543e f935d;

    /* renamed from: e */
    public InputConnection f936e;

    /* renamed from: f */
    public C1547i f937f;

    /* renamed from: com.android.ex.editstyledtext.EditStyledText$SavedStyledTextState */
    /* loaded from: classes-dex2jar.jar:com/android/ex/editstyledtext/EditStyledText$SavedStyledTextState.class */
    public static class SavedStyledTextState extends View.BaseSavedState {

        /* renamed from: a */
        public int f938a;

        public SavedStyledTextState(Parcelable parcelable) {
            super(parcelable);
        }

        public String toString() {
            return "EditStyledText.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " bgcolor=" + this.f938a + CssParser.BLOCK_END;
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f938a);
        }
    }

    /* renamed from: com.android.ex.editstyledtext.EditStyledText$SoftKeyReceiver */
    /* loaded from: classes-dex2jar.jar:com/android/ex/editstyledtext/EditStyledText$SoftKeyReceiver.class */
    public static class SoftKeyReceiver extends ResultReceiver {

        /* renamed from: a */
        public int f939a;

        /* renamed from: b */
        public int f940b;

        /* renamed from: c */
        public EditStyledText f941c;

        public SoftKeyReceiver(EditStyledText editStyledText) {
            super(editStyledText.getHandler());
            this.f941c = editStyledText;
        }

        @Override // android.os.ResultReceiver
        public void onReceiveResult(int i, Bundle bundle) {
            if (i != 2) {
                Selection.setSelection(this.f941c.getText(), this.f939a, this.f940b);
            }
        }
    }

    /* renamed from: com.android.ex.editstyledtext.EditStyledText$b */
    /* loaded from: classes-dex2jar.jar:com/android/ex/editstyledtext/EditStyledText$b.class */
    public static class C1513b extends ShapeDrawable {

        /* renamed from: a */
        public Rect f942a;

        public C1513b(int i, int i2, int i3, int i4) {
            super(new RectShape());
            this.f942a = new Rect(i4, i4, i2 - i4, i3 - i4);
            getPaint().setColor(i);
        }

        @Override // android.graphics.drawable.ShapeDrawable, android.graphics.drawable.Drawable
        public void draw(Canvas canvas) {
            canvas.drawRect(this.f942a, getPaint());
        }
    }

    /* renamed from: com.android.ex.editstyledtext.EditStyledText$c */
    /* loaded from: classes-dex2jar.jar:com/android/ex/editstyledtext/EditStyledText$c.class */
    public class C1514c {

        /* renamed from: a */
        public EditStyledText f946a;

        /* renamed from: b */
        public C1543e f947b;

        /* renamed from: c */
        public C1547i f948c;

        /* renamed from: d */
        public int f949d = 0;

        /* renamed from: e */
        public HashMap<Integer, C1523h> f950e = new HashMap<>();

        /* renamed from: f */
        public C1528m f951f = new C1528m(this);

        /* renamed from: g */
        public C1521f f952g = new C1521f();

        /* renamed from: h */
        public C1529n f953h = new C1529n();

        /* renamed from: i */
        public C1532q f954i = new C1532q();

        /* renamed from: j */
        public C1522g f955j = new C1522g();

        /* renamed from: k */
        public C1533r f956k = new C1533r();

        /* renamed from: l */
        public C1525j f957l = new C1525j();

        /* renamed from: m */
        public C1538w f958m = new C1538w();

        /* renamed from: n */
        public C1519d f959n = new C1519d();

        /* renamed from: o */
        public C1526k f960o = new C1526k();

        /* renamed from: p */
        public C1517b f961p = new C1517b();

        /* renamed from: q */
        public C1530o f962q = new C1530o();

        /* renamed from: r */
        public C1518c f963r = new C1518c();

        /* renamed from: s */
        public C1541z f964s = new C1541z();

        /* renamed from: t */
        public C1537v f965t = new C1537v();

        /* renamed from: u */
        public C1524i f966u = new C1524i();

        /* renamed from: v */
        public C1531p f967v = new C1531p();

        /* renamed from: w */
        public C1535t f968w = new C1535t();

        /* renamed from: x */
        public C1515a f969x = new C1515a();

        /* renamed from: y */
        public C1540y f970y = new C1540y();

        /* renamed from: z */
        public C1539x f971z = new C1539x();

        /* renamed from: A */
        public C1527l f943A = new C1527l();

        /* renamed from: B */
        public C1520e f944B = new C1520e();

        /* renamed from: C */
        public C1536u f945C = new C1536u();

        /* renamed from: com.android.ex.editstyledtext.EditStyledText$c$a */
        /* loaded from: classes-dex2jar.jar:com/android/ex/editstyledtext/EditStyledText$c$a.class */
        public class C1515a extends C1534s {
            public C1515a() {
                super();
            }

            @Override // com.android.p018ex.editstyledtext.EditStyledText.C1514c.C1534s, com.android.p018ex.editstyledtext.EditStyledText.C1514c.C1523h
            /* renamed from: c */
            public boolean mo36800c() {
                if (super.mo36800c()) {
                    return true;
                }
                C1514c.this.f948c.m36680e();
                return true;
            }
        }

        /* renamed from: com.android.ex.editstyledtext.EditStyledText$c$a0 */
        /* loaded from: classes-dex2jar.jar:com/android/ex/editstyledtext/EditStyledText$c$a0.class */
        public class C1516a0 extends C1523h {
            public C1516a0() {
                super();
            }

            @Override // com.android.p018ex.editstyledtext.EditStyledText.C1514c.C1523h
            /* renamed from: a */
            public boolean mo36799a() {
                if (C1514c.this.f947b.m36711l() == 0 || C1514c.this.f947b.m36711l() == 5) {
                    C1514c.this.f947b.m36724g(C1514c.this.f949d);
                    m36804f();
                    C1514c.this.m36816a();
                    return true;
                } else if (C1514c.this.f947b.m36711l() == C1514c.this.f949d) {
                    return false;
                } else {
                    C1514c.this.f947b.m36785F();
                    C1514c.this.f947b.m36724g(C1514c.this.f949d);
                    C1514c.this.m36816a();
                    return true;
                }
            }

            @Override // com.android.p018ex.editstyledtext.EditStyledText.C1514c.C1523h
            /* renamed from: b */
            public boolean mo36801b() {
                if (C1514c.this.f947b.m36711l() != 0 && C1514c.this.f947b.m36711l() != 5) {
                    return false;
                }
                C1514c.this.f947b.m36724g(C1514c.this.f949d);
                C1514c.this.m36812b();
                return true;
            }
        }

        /* renamed from: com.android.ex.editstyledtext.EditStyledText$c$b */
        /* loaded from: classes-dex2jar.jar:com/android/ex/editstyledtext/EditStyledText$c$b.class */
        public class C1517b extends C1523h {
            public C1517b() {
                super();
            }

            @Override // com.android.p018ex.editstyledtext.EditStyledText.C1514c.C1523h
            /* renamed from: b */
            public boolean mo36801b() {
                C1514c.this.f948c.m36678f();
                return true;
            }
        }

        /* renamed from: com.android.ex.editstyledtext.EditStyledText$c$c */
        /* loaded from: classes-dex2jar.jar:com/android/ex/editstyledtext/EditStyledText$c$c.class */
        public class C1518c extends C1523h {
            public C1518c() {
                super();
            }

            @Override // com.android.p018ex.editstyledtext.EditStyledText.C1514c.C1523h
            /* renamed from: b */
            public boolean mo36801b() {
                C1514c.this.f946a.m36867a();
                return true;
            }
        }

        /* renamed from: com.android.ex.editstyledtext.EditStyledText$c$d */
        /* loaded from: classes-dex2jar.jar:com/android/ex/editstyledtext/EditStyledText$c$d.class */
        public class C1519d extends C1523h {
            public C1519d() {
                super();
            }

            @Override // com.android.p018ex.editstyledtext.EditStyledText.C1514c.C1523h
            /* renamed from: b */
            public boolean mo36801b() {
                C1514c.this.f947b.m36731e();
                return true;
            }
        }

        /* renamed from: com.android.ex.editstyledtext.EditStyledText$c$e */
        /* loaded from: classes-dex2jar.jar:com/android/ex/editstyledtext/EditStyledText$c$e.class */
        public class C1520e extends C1534s {
            public C1520e() {
                super();
            }

            @Override // com.android.p018ex.editstyledtext.EditStyledText.C1514c.C1534s, com.android.p018ex.editstyledtext.EditStyledText.C1514c.C1523h
            /* renamed from: c */
            public boolean mo36800c() {
                if (super.mo36800c()) {
                    return true;
                }
                C1514c.this.f948c.m36676g();
                return true;
            }

            @Override // com.android.p018ex.editstyledtext.EditStyledText.C1514c.C1523h
            /* renamed from: d */
            public boolean mo36802d() {
                if (super.mo36802d()) {
                    return true;
                }
                int p = C1514c.this.f947b.m36704p();
                C1514c.this.f947b.m36749b(C1514c.this.f947b.m36713k(), false);
                if (!C1514c.this.f947b.m36696x()) {
                    C1514c.this.f947b.m36738c(p, false);
                    C1514c.this.f947b.m36785F();
                    return true;
                }
                m36804f();
                C1514c.this.f948c.m36676g();
                return true;
            }
        }

        /* renamed from: com.android.ex.editstyledtext.EditStyledText$c$f */
        /* loaded from: classes-dex2jar.jar:com/android/ex/editstyledtext/EditStyledText$c$f.class */
        public class C1521f extends C1516a0 {
            public C1521f() {
                super();
            }

            @Override // com.android.p018ex.editstyledtext.EditStyledText.C1514c.C1516a0, com.android.p018ex.editstyledtext.EditStyledText.C1514c.C1523h
            /* renamed from: a */
            public boolean mo36799a() {
                if (super.mo36799a()) {
                    return true;
                }
                C1514c.this.f947b.m36728f();
                C1514c.this.f947b.m36785F();
                return true;
            }
        }

        /* renamed from: com.android.ex.editstyledtext.EditStyledText$c$g */
        /* loaded from: classes-dex2jar.jar:com/android/ex/editstyledtext/EditStyledText$c$g.class */
        public class C1522g extends C1516a0 {
            public C1522g() {
                super();
            }

            @Override // com.android.p018ex.editstyledtext.EditStyledText.C1514c.C1516a0, com.android.p018ex.editstyledtext.EditStyledText.C1514c.C1523h
            /* renamed from: a */
            public boolean mo36799a() {
                if (super.mo36799a()) {
                    return true;
                }
                C1514c.this.f947b.m36725g();
                C1514c.this.f947b.m36785F();
                return true;
            }
        }

        /* renamed from: com.android.ex.editstyledtext.EditStyledText$c$h */
        /* loaded from: classes-dex2jar.jar:com/android/ex/editstyledtext/EditStyledText$c$h.class */
        public class C1523h {

            /* renamed from: a */
            public Object[] f980a;

            public C1523h() {
            }

            /* renamed from: a */
            public Object m36806a(int i) {
                Object[] objArr = this.f980a;
                if (objArr == null || i > objArr.length) {
                    return null;
                }
                return objArr[i];
            }

            /* renamed from: a */
            public void m36805a(Object[] objArr) {
                this.f980a = objArr;
            }

            /* renamed from: a */
            public boolean mo36799a() {
                return mo36803e();
            }

            /* renamed from: b */
            public boolean mo36801b() {
                return false;
            }

            /* renamed from: c */
            public boolean mo36800c() {
                return mo36799a();
            }

            /* renamed from: d */
            public boolean mo36802d() {
                return mo36799a();
            }

            /* renamed from: e */
            public boolean mo36803e() {
                return mo36801b();
            }

            /* renamed from: f */
            public boolean m36804f() {
                C1514c.this.f946a.m36858b();
                C1514c.this.f947b.m36715j(3);
                return true;
            }
        }

        /* renamed from: com.android.ex.editstyledtext.EditStyledText$c$i */
        /* loaded from: classes-dex2jar.jar:com/android/ex/editstyledtext/EditStyledText$c$i.class */
        public class C1524i extends C1523h {
            public C1524i() {
                super();
            }

            @Override // com.android.p018ex.editstyledtext.EditStyledText.C1514c.C1523h
            /* renamed from: b */
            public boolean mo36801b() {
                C1514c.this.f947b.m36722h();
                return true;
            }
        }

        /* renamed from: com.android.ex.editstyledtext.EditStyledText$c$j */
        /* loaded from: classes-dex2jar.jar:com/android/ex/editstyledtext/EditStyledText$c$j.class */
        public class C1525j extends C1523h {
            public C1525j() {
                super();
            }

            @Override // com.android.p018ex.editstyledtext.EditStyledText.C1514c.C1523h
            /* renamed from: b */
            public boolean mo36801b() {
                C1514c.this.f947b.m36701s();
                return true;
            }
        }

        /* renamed from: com.android.ex.editstyledtext.EditStyledText$c$k */
        /* loaded from: classes-dex2jar.jar:com/android/ex/editstyledtext/EditStyledText$c$k.class */
        public class C1526k extends C1523h {
            public C1526k() {
                super();
            }

            @Override // com.android.p018ex.editstyledtext.EditStyledText.C1514c.C1523h
            /* renamed from: b */
            public boolean mo36801b() {
                Object a = m36806a(0);
                if (a == null) {
                    C1514c.this.f946a.m36819x();
                    return true;
                } else if (a instanceof Uri) {
                    C1514c.this.f947b.m36767a((Uri) a);
                    return true;
                } else if (!(a instanceof Integer)) {
                    return true;
                } else {
                    C1514c.this.f947b.m36733d(((Integer) a).intValue());
                    return true;
                }
            }
        }

        /* renamed from: com.android.ex.editstyledtext.EditStyledText$c$l */
        /* loaded from: classes-dex2jar.jar:com/android/ex/editstyledtext/EditStyledText$c$l.class */
        public class C1527l extends C1534s {
            public C1527l() {
                super();
            }

            @Override // com.android.p018ex.editstyledtext.EditStyledText.C1514c.C1534s, com.android.p018ex.editstyledtext.EditStyledText.C1514c.C1523h
            /* renamed from: c */
            public boolean mo36800c() {
                if (super.mo36800c()) {
                    return true;
                }
                C1514c.this.f948c.m36674h();
                return true;
            }
        }

        /* renamed from: com.android.ex.editstyledtext.EditStyledText$c$m */
        /* loaded from: classes-dex2jar.jar:com/android/ex/editstyledtext/EditStyledText$c$m.class */
        public class C1528m extends C1523h {
            public C1528m(C1514c cVar) {
                super();
            }
        }

        /* renamed from: com.android.ex.editstyledtext.EditStyledText$c$n */
        /* loaded from: classes-dex2jar.jar:com/android/ex/editstyledtext/EditStyledText$c$n.class */
        public class C1529n extends C1523h {
            public C1529n() {
                super();
            }

            @Override // com.android.p018ex.editstyledtext.EditStyledText.C1514c.C1523h
            /* renamed from: b */
            public boolean mo36801b() {
                C1514c.this.f947b.m36786E();
                C1514c.this.f947b.m36785F();
                return true;
            }
        }

        /* renamed from: com.android.ex.editstyledtext.EditStyledText$c$o */
        /* loaded from: classes-dex2jar.jar:com/android/ex/editstyledtext/EditStyledText$c$o.class */
        public class C1530o extends C1523h {
            public C1530o() {
                super();
            }

            @Override // com.android.p018ex.editstyledtext.EditStyledText.C1514c.C1523h
            /* renamed from: b */
            public boolean mo36801b() {
                C1514c.this.f946a.m36817z();
                return true;
            }
        }

        /* renamed from: com.android.ex.editstyledtext.EditStyledText$c$p */
        /* loaded from: classes-dex2jar.jar:com/android/ex/editstyledtext/EditStyledText$c$p.class */
        public class C1531p extends C1523h {
            public C1531p() {
                super();
            }

            @Override // com.android.p018ex.editstyledtext.EditStyledText.C1514c.C1523h
            /* renamed from: b */
            public boolean mo36801b() {
                C1514c.this.f947b.m36785F();
                return true;
            }
        }

        /* renamed from: com.android.ex.editstyledtext.EditStyledText$c$q */
        /* loaded from: classes-dex2jar.jar:com/android/ex/editstyledtext/EditStyledText$c$q.class */
        public class C1532q extends C1523h {
            public C1532q() {
                super();
            }

            @Override // com.android.p018ex.editstyledtext.EditStyledText.C1514c.C1523h
            /* renamed from: b */
            public boolean mo36801b() {
                if (C1514c.this.f947b.m36697w()) {
                    Log.e("EditModeActions", "Selection is off, but selected");
                }
                C1514c.this.f947b.m36781J();
                C1514c.this.f946a.m36852c(3);
                return true;
            }

            @Override // com.android.p018ex.editstyledtext.EditStyledText.C1514c.C1523h
            /* renamed from: c */
            public boolean mo36800c() {
                return false;
            }

            @Override // com.android.p018ex.editstyledtext.EditStyledText.C1514c.C1523h
            /* renamed from: e */
            public boolean mo36803e() {
                if (C1514c.this.f947b.m36697w()) {
                    Log.e("EditModeActions", "Selection now start, but selected");
                }
                C1514c.this.f947b.m36782I();
                C1514c.this.f946a.m36852c(4);
                if (C1514c.this.f947b.m36711l() == 5) {
                    return true;
                }
                C1514c cVar = C1514c.this;
                cVar.m36815a(cVar.f947b.m36711l());
                return true;
            }
        }

        /* renamed from: com.android.ex.editstyledtext.EditStyledText$c$r */
        /* loaded from: classes-dex2jar.jar:com/android/ex/editstyledtext/EditStyledText$c$r.class */
        public class C1533r extends C1523h {
            public C1533r() {
                super();
            }

            @Override // com.android.p018ex.editstyledtext.EditStyledText.C1514c.C1523h
            /* renamed from: b */
            public boolean mo36801b() {
                C1514c.this.f947b.m36783H();
                return true;
            }
        }

        /* renamed from: com.android.ex.editstyledtext.EditStyledText$c$s */
        /* loaded from: classes-dex2jar.jar:com/android/ex/editstyledtext/EditStyledText$c$s.class */
        public class C1534s extends C1523h {
            public C1534s() {
                super();
            }

            @Override // com.android.p018ex.editstyledtext.EditStyledText.C1514c.C1523h
            /* renamed from: a */
            public boolean mo36799a() {
                if (C1514c.this.f947b.m36711l() != 0 && C1514c.this.f947b.m36711l() != 5) {
                    return mo36803e();
                }
                C1514c.this.f947b.m36724g(C1514c.this.f949d);
                m36804f();
                C1514c.this.m36816a();
                return true;
            }

            @Override // com.android.p018ex.editstyledtext.EditStyledText.C1514c.C1523h
            /* renamed from: b */
            public boolean mo36801b() {
                if (C1514c.this.f947b.m36711l() == 0 || C1514c.this.f947b.m36711l() == 5) {
                    C1514c.this.f947b.m36724g(C1514c.this.f949d);
                    C1514c.this.f947b.m36769a(C1514c.this.f946a.getSelectionStart(), C1514c.this.f946a.getSelectionEnd());
                    m36804f();
                    C1514c.this.m36816a();
                    return true;
                } else if (C1514c.this.f947b.m36711l() == C1514c.this.f949d) {
                    return false;
                } else {
                    String str = "--- setspanactionbase" + C1514c.this.f947b.m36711l() + "," + C1514c.this.f949d;
                    if (!C1514c.this.f947b.m36696x()) {
                        C1514c.this.f947b.m36785F();
                        C1514c.this.f947b.m36724g(C1514c.this.f949d);
                    } else {
                        C1514c.this.f947b.m36724g(0);
                        C1514c.this.f947b.m36715j(0);
                    }
                    C1514c.this.m36816a();
                    return true;
                }
            }

            @Override // com.android.p018ex.editstyledtext.EditStyledText.C1514c.C1523h
            /* renamed from: c */
            public boolean mo36800c() {
                if (mo36799a()) {
                    return true;
                }
                C1514c.this.f946a.m36852c(0);
                return false;
            }

            @Override // com.android.p018ex.editstyledtext.EditStyledText.C1514c.C1523h
            /* renamed from: e */
            public boolean mo36803e() {
                if (C1514c.this.f947b.m36711l() != 0 && C1514c.this.f947b.m36711l() != 5) {
                    return mo36801b();
                }
                C1514c.this.f947b.m36724g(C1514c.this.f949d);
                C1514c.this.m36812b();
                return true;
            }
        }

        /* renamed from: com.android.ex.editstyledtext.EditStyledText$c$t */
        /* loaded from: classes-dex2jar.jar:com/android/ex/editstyledtext/EditStyledText$c$t.class */
        public class C1535t extends C1523h {
            public C1535t() {
                super();
            }

            @Override // com.android.p018ex.editstyledtext.EditStyledText.C1514c.C1523h
            /* renamed from: b */
            public boolean mo36801b() {
                C1514c.this.f946a.m36818y();
                return true;
            }
        }

        /* renamed from: com.android.ex.editstyledtext.EditStyledText$c$u */
        /* loaded from: classes-dex2jar.jar:com/android/ex/editstyledtext/EditStyledText$c$u.class */
        public class C1536u extends C1534s {
            public C1536u() {
                super();
            }

            @Override // com.android.p018ex.editstyledtext.EditStyledText.C1514c.C1534s, com.android.p018ex.editstyledtext.EditStyledText.C1514c.C1523h
            /* renamed from: c */
            public boolean mo36800c() {
                if (super.mo36800c()) {
                    return true;
                }
                C1514c.this.f948c.m36672i();
                return true;
            }

            @Override // com.android.p018ex.editstyledtext.EditStyledText.C1514c.C1523h
            /* renamed from: d */
            public boolean mo36802d() {
                if (super.mo36802d()) {
                    return true;
                }
                int k = C1514c.this.f947b.m36713k();
                C1514c.this.f947b.m36738c(C1514c.this.f947b.m36704p(), false);
                if (!C1514c.this.f947b.m36696x()) {
                    C1514c.this.f947b.m36749b(k, false);
                    C1514c.this.f947b.m36785F();
                    return true;
                }
                m36804f();
                C1514c.this.f948c.m36672i();
                return true;
            }
        }

        /* renamed from: com.android.ex.editstyledtext.EditStyledText$c$v */
        /* loaded from: classes-dex2jar.jar:com/android/ex/editstyledtext/EditStyledText$c$v.class */
        public class C1537v extends C1523h {
            public C1537v() {
                super();
            }

            @Override // com.android.p018ex.editstyledtext.EditStyledText.C1514c.C1523h
            /* renamed from: b */
            public boolean mo36801b() {
                C1514c.this.f947b.m36776O();
                return true;
            }
        }

        /* renamed from: com.android.ex.editstyledtext.EditStyledText$c$w */
        /* loaded from: classes-dex2jar.jar:com/android/ex/editstyledtext/EditStyledText$c$w.class */
        public class C1538w extends C1523h {
            public C1538w() {
                super();
            }

            @Override // com.android.p018ex.editstyledtext.EditStyledText.C1514c.C1523h
            /* renamed from: b */
            public boolean mo36801b() {
                C1514c.this.f947b.m36719i();
                return true;
            }
        }

        /* renamed from: com.android.ex.editstyledtext.EditStyledText$c$x */
        /* loaded from: classes-dex2jar.jar:com/android/ex/editstyledtext/EditStyledText$c$x.class */
        public class C1539x extends C1534s {
            public C1539x() {
                super();
            }

            @Override // com.android.p018ex.editstyledtext.EditStyledText.C1514c.C1534s, com.android.p018ex.editstyledtext.EditStyledText.C1514c.C1523h
            /* renamed from: c */
            public boolean mo36800c() {
                if (super.mo36800c()) {
                    return true;
                }
                C1514c.this.f947b.m36779L();
                return true;
            }
        }

        /* renamed from: com.android.ex.editstyledtext.EditStyledText$c$y */
        /* loaded from: classes-dex2jar.jar:com/android/ex/editstyledtext/EditStyledText$c$y.class */
        public class C1540y extends C1534s {
            public C1540y() {
                super();
            }

            @Override // com.android.p018ex.editstyledtext.EditStyledText.C1514c.C1534s, com.android.p018ex.editstyledtext.EditStyledText.C1514c.C1523h
            /* renamed from: c */
            public boolean mo36800c() {
                if (super.mo36800c()) {
                    return true;
                }
                C1514c.this.f947b.m36778M();
                return true;
            }
        }

        /* renamed from: com.android.ex.editstyledtext.EditStyledText$c$z */
        /* loaded from: classes-dex2jar.jar:com/android/ex/editstyledtext/EditStyledText$c$z.class */
        public class C1541z extends C1516a0 {
            public C1541z() {
                super();
            }

            @Override // com.android.p018ex.editstyledtext.EditStyledText.C1514c.C1516a0, com.android.p018ex.editstyledtext.EditStyledText.C1514c.C1523h
            /* renamed from: a */
            public boolean mo36799a() {
                if (super.mo36799a()) {
                    return true;
                }
                Object a = m36806a(0);
                if (a != null && (a instanceof Integer)) {
                    C1514c.this.f946a.onTextContextMenuItem(((Integer) a).intValue());
                }
                C1514c.this.f947b.m36785F();
                return true;
            }
        }

        public C1514c(EditStyledText editStyledText, EditStyledText editStyledText2, C1543e eVar, C1547i iVar) {
            this.f946a = editStyledText2;
            this.f947b = eVar;
            this.f948c = iVar;
            this.f950e.put(0, this.f951f);
            this.f950e.put(1, this.f952g);
            this.f950e.put(2, this.f953h);
            this.f950e.put(5, this.f954i);
            this.f950e.put(7, this.f955j);
            this.f950e.put(11, this.f956k);
            this.f950e.put(12, this.f957l);
            this.f950e.put(13, this.f958m);
            this.f950e.put(14, this.f959n);
            this.f950e.put(15, this.f960o);
            this.f950e.put(16, this.f961p);
            this.f950e.put(17, this.f962q);
            this.f950e.put(18, this.f963r);
            this.f950e.put(19, this.f964s);
            this.f950e.put(20, this.f965t);
            this.f950e.put(21, this.f966u);
            this.f950e.put(22, this.f967v);
            this.f950e.put(23, this.f968w);
            this.f950e.put(6, this.f969x);
            this.f950e.put(8, this.f970y);
            this.f950e.put(9, this.f971z);
            this.f950e.put(10, this.f943A);
            this.f950e.put(4, this.f944B);
            this.f950e.put(3, this.f945C);
        }

        /* renamed from: a */
        public void m36814a(int i, Object[] objArr) {
            m36811b(i).m36805a(objArr);
            this.f949d = i;
            m36815a(i);
        }

        /* renamed from: a */
        public boolean m36816a() {
            return m36815a(this.f949d);
        }

        /* renamed from: a */
        public boolean m36815a(int i) {
            String str = "--- do the next action: " + i + "," + this.f947b.m36709m();
            C1523h b = m36811b(i);
            if (b == null) {
                Log.e("EditModeActions", "--- invalid action error.");
                return false;
            }
            int m = this.f947b.m36709m();
            if (m == 0) {
                return b.mo36801b();
            }
            if (m == 1) {
                return b.mo36803e();
            }
            if (m == 2) {
                return b.mo36799a();
            }
            if (m != 3) {
                return false;
            }
            return this.f947b.m36696x() ? b.mo36802d() : b.mo36800c();
        }

        /* renamed from: b */
        public final C1523h m36811b(int i) {
            if (this.f950e.containsKey(Integer.valueOf(i))) {
                return this.f950e.get(Integer.valueOf(i));
            }
            return null;
        }

        /* renamed from: b */
        public void m36812b() {
            m36815a(5);
        }

        /* renamed from: c */
        public void m36809c(int i) {
            m36814a(i, null);
        }
    }

    /* renamed from: com.android.ex.editstyledtext.EditStyledText$d */
    /* loaded from: classes-dex2jar.jar:com/android/ex/editstyledtext/EditStyledText$d.class */
    public interface AbstractC1542d {
        /* renamed from: a */
        void m36797a(int i);

        /* renamed from: a */
        void m36796a(int i, int i2);

        /* renamed from: a */
        boolean m36798a();

        /* renamed from: a */
        boolean m36795a(MotionEvent motionEvent);

        /* renamed from: b */
        boolean m36794b();

        /* renamed from: c */
        void m36793c();

        /* renamed from: d */
        boolean m36792d();

        /* renamed from: e */
        boolean m36791e();
    }

    /* renamed from: com.android.ex.editstyledtext.EditStyledText$e */
    /* loaded from: classes-dex2jar.jar:com/android/ex/editstyledtext/EditStyledText$e.class */
    public class C1543e {

        /* renamed from: a */
        public boolean f999a = false;

        /* renamed from: b */
        public boolean f1000b = false;

        /* renamed from: c */
        public boolean f1001c = false;

        /* renamed from: d */
        public boolean f1002d = false;

        /* renamed from: e */
        public boolean f1003e = false;

        /* renamed from: f */
        public int f1004f = 0;

        /* renamed from: g */
        public int f1005g = 0;

        /* renamed from: h */
        public int f1006h = 0;

        /* renamed from: i */
        public int f1007i = 0;

        /* renamed from: j */
        public int f1008j = ViewCompat.MEASURED_SIZE_MASK;

        /* renamed from: k */
        public int f1009k = 0;

        /* renamed from: l */
        public int f1010l = ViewCompat.MEASURED_SIZE_MASK;

        /* renamed from: m */
        public BackgroundColorSpan f1011m;

        /* renamed from: n */
        public EditStyledText f1012n;

        /* renamed from: o */
        public C1514c f1013o;

        /* renamed from: p */
        public SoftKeyReceiver f1014p;

        /* renamed from: q */
        public SpannableStringBuilder f1015q;

        public C1543e(EditStyledText editStyledText, C1547i iVar) {
            this.f1012n = editStyledText;
            this.f1013o = new C1514c(EditStyledText.this, this.f1012n, this, iVar);
            this.f1014p = new SoftKeyReceiver(this.f1012n);
        }

        /* renamed from: A */
        public void m36790A() {
            int i = this.f1005g;
            if (i == 1 || i == 2) {
                this.f1013o.m36812b();
                this.f1012n.m36865a(this.f1004f, this.f1005g);
            }
        }

        /* renamed from: B */
        public void m36789B() {
            m36719i();
            this.f1012n.m36865a(this.f1004f, this.f1005g);
        }

        /* renamed from: C */
        public void m36788C() {
            Editable text = this.f1012n.getText();
            int length = text.length();
            int width = this.f1012n.getWidth();
            C5616b[] bVarArr = (C5616b[]) text.getSpans(0, length, C5616b.class);
            for (C5616b bVar : bVarArr) {
                bVar.m25000a(width);
            }
            for (C5617c cVar : (C5617c[]) text.getSpans(0, length, C5617c.class)) {
                cVar.m24997b(this.f1012n.m36853c());
            }
            if (bVarArr.length > 0) {
                text.replace(0, 1, "" + text.charAt(0));
            }
        }

        /* renamed from: D */
        public void m36787D() {
            Editable text = this.f1012n.getText();
            int i = 0;
            while (i < text.length()) {
                int i2 = i;
                if (text.charAt(i) == 8288) {
                    text.replace(i, i + 1, "");
                    i2 = i - 1;
                }
                i = i2 + 1;
            }
        }

        /* renamed from: E */
        public final void m36786E() {
            DynamicDrawableSpan[] dynamicDrawableSpanArr;
            int min = Math.min(this.f1012n.getSelectionStart(), this.f1012n.getSelectionEnd());
            int max = Math.max(this.f1012n.getSelectionStart(), this.f1012n.getSelectionEnd());
            Selection.setSelection(this.f1012n.getText(), max);
            ClipboardManager clipboardManager = (ClipboardManager) EditStyledText.this.getContext().getSystemService("clipboard");
            this.f1001c = true;
            this.f1012n.getText().replace(min, max, clipboardManager.getText());
            if (!m36735c(clipboardManager.getText())) {
                SpannableStringBuilder spannableStringBuilder = this.f1015q;
                for (DynamicDrawableSpan dynamicDrawableSpan : (DynamicDrawableSpan[]) spannableStringBuilder.getSpans(0, spannableStringBuilder.length(), DynamicDrawableSpan.class)) {
                    int spanStart = this.f1015q.getSpanStart(dynamicDrawableSpan);
                    if (dynamicDrawableSpan instanceof C5616b) {
                        m36762a(new C5616b(-16777216, this.f1012n.getWidth(), this.f1012n.getText()), spanStart + min);
                    } else if (dynamicDrawableSpan instanceof C5618d) {
                        m36762a(new C5618d(this.f1012n.getContext(), ((C5618d) dynamicDrawableSpan).m24996a(), this.f1012n.m36845e()), spanStart + min);
                    }
                }
            }
        }

        /* renamed from: F */
        public final void m36785F() {
            m36722h();
            this.f999a = true;
            this.f1012n.m36865a(this.f1004f, this.f1005g);
        }

        /* renamed from: G */
        public final void m36784G() {
            this.f1002d = false;
            this.f1005g = 3;
            EditStyledText editStyledText = this.f1012n;
            EditStyledText.m36847d(editStyledText, editStyledText.getText());
        }

        /* renamed from: H */
        public final void m36783H() {
            Selection.selectAll(this.f1012n.getText());
            this.f1006h = this.f1012n.getSelectionStart();
            this.f1007i = this.f1012n.getSelectionEnd();
            this.f1004f = 5;
            this.f1005g = 3;
        }

        /* renamed from: I */
        public final void m36782I() {
            if (this.f1012n.getSelectionEnd() == this.f1006h) {
                m36721h(this.f1012n.getSelectionStart());
            } else {
                m36721h(this.f1012n.getSelectionEnd());
            }
        }

        /* renamed from: J */
        public final void m36781J() {
            this.f1006h = this.f1012n.getSelectionStart();
            this.f1005g = 1;
        }

        /* renamed from: K */
        public final void m36780K() {
            int i;
            String str = "--- onSelect:" + this.f1006h + "," + this.f1007i;
            int i2 = this.f1006h;
            if (i2 < 0 || i2 > this.f1012n.getText().length() || (i = this.f1007i) < 0 || i > this.f1012n.getText().length()) {
                Log.e("EditStyledText.EditorManager", "Select is on, but cursor positions are illigal.:" + this.f1012n.getText().length() + "," + this.f1006h + "," + this.f1007i);
                return;
            }
            int i3 = this.f1006h;
            int i4 = this.f1007i;
            if (i3 < i4) {
                this.f1012n.setSelection(i3, i4);
                this.f1005g = 2;
            } else if (i3 > i4) {
                this.f1012n.setSelection(i4, i3);
                this.f1005g = 2;
            } else {
                this.f1005g = 1;
            }
        }

        /* renamed from: L */
        public void m36779L() {
            int i = this.f1005g;
            if (i == 2 || i == 3) {
                m36771a();
                m36785F();
            }
        }

        /* renamed from: M */
        public void m36778M() {
            int i = this.f1005g;
            if (i == 2 || i == 3) {
                m36752b();
                m36785F();
            }
        }

        /* renamed from: N */
        public void m36777N() {
            m36739c(this.f1012n.getSelectionStart(), this.f1012n.getSelectionEnd());
        }

        /* renamed from: O */
        public final void m36776O() {
            m36785F();
            m36777N();
        }

        /* renamed from: P */
        public void m36775P() {
            this.f1000b = false;
        }

        /* renamed from: Q */
        public final void m36774Q() {
            EditStyledText editStyledText = this.f1012n;
            EditStyledText.m36847d(editStyledText, editStyledText.getText());
            int selectionStart = this.f1012n.getSelectionStart();
            this.f1012n.setSelection(selectionStart, selectionStart);
            this.f1005g = 0;
        }

        /* renamed from: R */
        public void m36773R() {
            if (this.f1011m != null) {
                this.f1012n.getText().removeSpan(this.f1011m);
                this.f1011m = null;
            }
        }

        /* renamed from: S */
        public final void m36772S() {
            this.f1002d = true;
            if (this.f1006h == this.f1007i) {
                this.f1005g = 1;
            } else {
                this.f1005g = 2;
            }
            EditStyledText editStyledText = this.f1012n;
            EditStyledText.m36851c(editStyledText, editStyledText.getText());
        }

        /* renamed from: a */
        public final int m36766a(Editable editable, int i) {
            int i2;
            int i3 = i;
            while (true) {
                i2 = i3;
                if (i3 >= editable.length()) {
                    break;
                } else if (editable.charAt(i3) == '\n') {
                    i2 = i3 + 1;
                    break;
                } else {
                    i3++;
                }
            }
            String str = "--- findLineEnd:" + i + "," + editable.length() + "," + i2;
            return i2;
        }

        /* renamed from: a */
        public final SpannableStringBuilder m36763a(SpannableStringBuilder spannableStringBuilder) {
            DynamicDrawableSpan[] dynamicDrawableSpanArr;
            SpannableStringBuilder spannableStringBuilder2 = new SpannableStringBuilder(spannableStringBuilder);
            for (DynamicDrawableSpan dynamicDrawableSpan : (DynamicDrawableSpan[]) spannableStringBuilder2.getSpans(0, spannableStringBuilder2.length(), DynamicDrawableSpan.class)) {
                if ((dynamicDrawableSpan instanceof C5616b) || (dynamicDrawableSpan instanceof C5618d)) {
                    spannableStringBuilder2.replace(spannableStringBuilder2.getSpanStart(dynamicDrawableSpan), spannableStringBuilder2.getSpanEnd(dynamicDrawableSpan), (CharSequence) "");
                }
            }
            return spannableStringBuilder2;
        }

        /* renamed from: a */
        public final void m36771a() {
            m36770a(0);
        }

        /* renamed from: a */
        public final void m36770a(int i) {
            String str = "--- addMarquee:" + i;
            m36755a(new C5617c(i, this.f1012n.m36853c()));
        }

        /* renamed from: a */
        public final void m36769a(int i, int i2) {
            this.f1006h = i;
            this.f1007i = i2;
        }

        /* renamed from: a */
        public void m36768a(int i, boolean z) {
            this.f1013o.m36809c(i);
            if (z) {
                this.f1012n.m36865a(this.f1004f, this.f1005g);
            }
        }

        /* renamed from: a */
        public final void m36767a(Uri uri) {
            m36762a(new C5618d(this.f1012n.getContext(), uri, this.f1012n.m36845e()), this.f1012n.getSelectionStart());
        }

        /* renamed from: a */
        public void m36765a(Editable editable, int i, int i2, int i3) {
            Object[] spans;
            String str = "updateSpanNext:" + i + "," + i2 + "," + i3;
            int i4 = i + i3;
            int min = Math.min(i, i4);
            int max = Math.max(i, i4);
            for (Object obj : editable.getSpans(max, max, Object.class)) {
                boolean z = obj instanceof C5617c;
                if (z || (obj instanceof AlignmentSpan)) {
                    int spanStart = editable.getSpanStart(obj);
                    int spanEnd = editable.getSpanEnd(obj);
                    String str2 = "spantype:" + obj.getClass() + "," + spanEnd;
                    if (((z || (obj instanceof AlignmentSpan)) ? m36748b(this.f1012n.getText(), min) : min) < spanStart && i2 > i3) {
                        editable.removeSpan(obj);
                    } else if (spanStart > min) {
                        editable.setSpan(obj, min, spanEnd, 33);
                    }
                } else if ((obj instanceof C5616b) && editable.getSpanStart(obj) == i4 && i4 > 0 && this.f1012n.getText().charAt(i4 - 1) != '\n') {
                    this.f1012n.getText().insert(i4, "\n");
                    this.f1012n.setSelection(i4);
                }
            }
        }

        /* renamed from: a */
        public final void m36764a(Layout.Alignment alignment) {
            m36755a(new AlignmentSpan.Standard(alignment));
        }

        /* renamed from: a */
        public final void m36762a(DynamicDrawableSpan dynamicDrawableSpan, int i) {
            if (dynamicDrawableSpan == null || dynamicDrawableSpan.getDrawable() == null) {
                Log.e("EditStyledText.EditorManager", "--- insertImageSpan: null span was inserted");
                this.f1012n.m36852c(5);
                return;
            }
            this.f1012n.getText().insert(i, "￼");
            this.f1012n.getText().setSpan(dynamicDrawableSpan, i, i + 1, 33);
            this.f1012n.m36865a(this.f1004f, this.f1005g);
        }

        /* renamed from: a */
        public final void m36756a(CharSequence charSequence) {
            Object[] spans;
            int length = charSequence.length();
            if (charSequence instanceof Editable) {
                Editable editable = (Editable) charSequence;
                for (Object obj : editable.getSpans(0, length, Object.class)) {
                    if ((obj instanceof ParagraphStyle) || (obj instanceof QuoteSpan) || ((obj instanceof CharacterStyle) && !(obj instanceof UnderlineSpan))) {
                        if ((obj instanceof ImageSpan) || (obj instanceof C5616b)) {
                            editable.replace(editable.getSpanStart(obj), editable.getSpanEnd(obj), "");
                        }
                        editable.removeSpan(obj);
                    }
                }
            }
        }

        /* renamed from: a */
        public final void m36755a(Object obj) {
            int min = Math.min(this.f1006h, this.f1007i);
            int max = Math.max(this.f1006h, this.f1007i);
            int selectionStart = this.f1012n.getSelectionStart();
            int b = m36748b(this.f1012n.getText(), min);
            int a = m36766a(this.f1012n.getText(), max);
            if (b == a) {
                this.f1012n.getText().insert(a, "\n");
                m36754a(obj, b, a + 1);
            } else {
                m36754a(obj, b, a);
            }
            Selection.setSelection(this.f1012n.getText(), selectionStart);
        }

        /* renamed from: a */
        public final void m36754a(Object obj, int i, int i2) {
            String str = "--- setStyledTextSpan:" + this.f1004f + "," + i + "," + i2;
            int min = Math.min(i, i2);
            int max = Math.max(i, i2);
            this.f1012n.getText().setSpan(obj, min, max, 33);
            Selection.setSelection(this.f1012n.getText(), max);
        }

        /* renamed from: a */
        public void m36753a(boolean z) {
            this.f1004f = 5;
            if (this.f1005g == 0) {
                this.f1013o.m36812b();
            } else {
                m36774Q();
                this.f1013o.m36812b();
            }
            if (z) {
                this.f1012n.m36865a(this.f1004f, this.f1005g);
            }
        }

        /* renamed from: b */
        public final int m36748b(Editable editable, int i) {
            int i2 = i;
            while (i2 > 0 && editable.charAt(i2 - 1) != '\n') {
                i2--;
            }
            String str = "--- findLineStart:" + i + "," + editable.length() + "," + i2;
            return i2;
        }

        /* renamed from: b */
        public final void m36752b() {
            m36770a(1);
        }

        /* renamed from: b */
        public final void m36751b(int i) {
            if (this.f1006h != this.f1007i) {
                m36754a(new ForegroundColorSpan(i), this.f1006h, this.f1007i);
            } else {
                Log.e("EditStyledText.EditorManager", "---changeColor: Size of the span is zero");
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:5:0x0045, code lost:
            if (r7 != 16777215) goto L_0x0055;
         */
        /* renamed from: b */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void m36750b(int r7, int r8) {
            /*
                Method dump skipped, instructions count: 245
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.p018ex.editstyledtext.EditStyledText.C1543e.m36750b(int, int):void");
        }

        /* renamed from: b */
        public void m36749b(int i, boolean z) {
            if (m36695y()) {
                this.f1008j = i;
                return;
            }
            int i2 = this.f1005g;
            if (i2 == 2 || i2 == 3) {
                if (i != 16777215) {
                    m36751b(i);
                }
                if (z) {
                    m36785F();
                }
            }
        }

        /* renamed from: b */
        public void m36747b(Editable editable, int i, int i2, int i3) {
            Object[] spans;
            String str = "updateSpanPrevious:" + i + "," + i2 + "," + i3;
            int i4 = i + i3;
            int min = Math.min(i, i4);
            int max = Math.max(i, i4);
            for (Object obj : editable.getSpans(min, min, Object.class)) {
                if ((obj instanceof ForegroundColorSpan) || (obj instanceof AbsoluteSizeSpan) || (obj instanceof C5617c) || (obj instanceof AlignmentSpan)) {
                    int spanStart = editable.getSpanStart(obj);
                    int spanEnd = editable.getSpanEnd(obj);
                    String str2 = "spantype:" + obj.getClass() + "," + spanStart;
                    int a = ((obj instanceof C5617c) || (obj instanceof AlignmentSpan)) ? m36766a(this.f1012n.getText(), max) : this.f1001c ? spanEnd : max;
                    if (spanEnd < a) {
                        editable.setSpan(obj, spanStart, a, 33);
                    }
                } else if (obj instanceof C5616b) {
                    int spanStart2 = editable.getSpanStart(obj);
                    int spanEnd2 = editable.getSpanEnd(obj);
                    if (i2 > i3) {
                        editable.replace(spanStart2, spanEnd2, "");
                        editable.removeSpan(obj);
                    } else if (spanEnd2 == i4 && i4 < editable.length() && this.f1012n.getText().charAt(i4) != '\n') {
                        this.f1012n.getText().insert(i4, "\n");
                    }
                }
            }
        }

        /* renamed from: b */
        public void m36746b(Layout.Alignment alignment) {
            int i = this.f1005g;
            if (i == 2 || i == 3) {
                m36764a(alignment);
                m36785F();
            }
        }

        /* renamed from: b */
        public final void m36743b(CharSequence charSequence) {
            if (charSequence instanceof Spannable) {
                Spannable spannable = (Spannable) charSequence;
                int length = spannable.length();
                String str = "--- dumpSpannableString, txt:" + ((Object) spannable) + ", len:" + length;
                for (Object obj : spannable.getSpans(0, length, Object.class)) {
                    String str2 = "--- dumpSpannableString, class:" + obj + "," + spannable.getSpanStart(obj) + "," + spannable.getSpanEnd(obj) + "," + spannable.getSpanFlags(obj);
                }
            }
        }

        /* renamed from: b */
        public void m36742b(boolean z) {
            m36703q();
            if (z) {
                this.f1012n.m36865a(this.f1004f, this.f1005g);
            }
        }

        /* renamed from: c */
        public void m36741c() {
            m36702r();
            this.f1000b = true;
        }

        /* renamed from: c */
        public final void m36740c(int i) {
            if (this.f1006h != this.f1007i) {
                m36754a(new AbsoluteSizeSpan(i), this.f1006h, this.f1007i);
            } else {
                Log.e("EditStyledText.EditorManager", "---changeSize: Size of the span is zero");
            }
        }

        /* renamed from: c */
        public void m36739c(int i, int i2) {
            if (this.f1012n.isFocused() && !m36699u()) {
                this.f1014p.f939a = Selection.getSelectionStart(this.f1012n.getText());
                this.f1014p.f940b = Selection.getSelectionEnd(this.f1012n.getText());
                if (((InputMethodManager) EditStyledText.this.getContext().getSystemService("input_method")).showSoftInput(this.f1012n, 0, this.f1014p) && this.f1014p != null) {
                    Selection.setSelection(EditStyledText.this.getText(), i, i2);
                }
            }
        }

        /* renamed from: c */
        public void m36738c(int i, boolean z) {
            if (m36695y()) {
                this.f1009k = i;
                return;
            }
            int i2 = this.f1005g;
            if (i2 == 2 || i2 == 3) {
                if (i > 0) {
                    m36740c(i);
                }
                if (z) {
                    m36785F();
                }
            }
        }

        /* renamed from: c */
        public final boolean m36735c(CharSequence charSequence) {
            String str = "--- isClipBoardChanged:" + ((Object) charSequence);
            if (this.f1015q == null) {
                return true;
            }
            int length = charSequence.length();
            SpannableStringBuilder a = m36763a(this.f1015q);
            String str2 = "--- clipBoard:" + length + "," + ((Object) a) + ((Object) charSequence);
            if (length != a.length()) {
                return true;
            }
            for (int i = 0; i < length; i++) {
                if (charSequence.charAt(i) != a.charAt(i)) {
                    return true;
                }
            }
            return false;
        }

        /* renamed from: d */
        public final void m36733d(int i) {
            m36762a(new C5618d(this.f1012n.getContext(), i, this.f1012n.m36849d()), this.f1012n.getSelectionStart());
        }

        /* renamed from: d */
        public boolean m36734d() {
            SpannableStringBuilder spannableStringBuilder = this.f1015q;
            return spannableStringBuilder != null && spannableStringBuilder.length() > 0 && m36763a(this.f1015q).length() == 0;
        }

        /* renamed from: e */
        public final void m36731e() {
            m36756a((CharSequence) this.f1012n.getText());
            EditStyledText editStyledText = this.f1012n;
            editStyledText.setBackgroundDrawable(editStyledText.f934c);
            this.f1010l = ViewCompat.MEASURED_SIZE_MASK;
            m36787D();
        }

        /* renamed from: e */
        public void m36730e(int i) {
            m36768a(i, true);
        }

        /* renamed from: f */
        public final void m36728f() {
            this.f1015q = (SpannableStringBuilder) this.f1012n.getText().subSequence(Math.min(m36705o(), m36707n()), Math.max(m36705o(), m36707n()));
            SpannableStringBuilder a = m36763a(this.f1015q);
            ((ClipboardManager) EditStyledText.this.getContext().getSystemService("clipboard")).setText(a);
            m36743b(a);
            m36743b(this.f1015q);
        }

        /* renamed from: f */
        public void m36727f(int i) {
            this.f1010l = i;
        }

        /* renamed from: g */
        public final void m36725g() {
            m36728f();
            this.f1012n.getText().delete(Math.min(m36705o(), m36707n()), Math.max(m36705o(), m36707n()));
        }

        /* renamed from: g */
        public final void m36724g(int i) {
            this.f1004f = i;
        }

        /* renamed from: h */
        public final void m36722h() {
            this.f1004f = 0;
            this.f1005g = 0;
            this.f999a = false;
            this.f1008j = ViewCompat.MEASURED_SIZE_MASK;
            this.f1009k = 0;
            this.f1002d = false;
            this.f1000b = false;
            this.f1001c = false;
            this.f1003e = false;
            m36774Q();
            this.f1012n.setOnClickListener(null);
            m36775P();
        }

        /* renamed from: h */
        public void m36721h(int i) {
            String str = "--- setSelectedEndPos:" + i;
            this.f1007i = i;
            m36780K();
        }

        /* renamed from: i */
        public final void m36719i() {
            String str = "--- handleComplete:" + this.f1006h + "," + this.f1007i;
            if (this.f999a) {
                if (this.f1006h == this.f1007i) {
                    String str2 = "--- cancel handle complete:" + this.f1006h;
                    m36785F();
                    return;
                }
                if (this.f1005g == 2) {
                    this.f1005g = 3;
                }
                this.f1013o.m36815a(this.f1004f);
                EditStyledText editStyledText = this.f1012n;
                EditStyledText.m36847d(editStyledText, editStyledText.getText());
            }
        }

        /* renamed from: i */
        public void m36718i(int i) {
            int i2 = this.f1005g;
            if (i2 == 2 || i2 == 3) {
                m36770a(i);
                m36785F();
            }
        }

        /* renamed from: j */
        public int m36716j() {
            return this.f1010l;
        }

        /* renamed from: j */
        public final void m36715j(int i) {
            this.f1005g = i;
        }

        /* renamed from: k */
        public int m36713k() {
            return this.f1008j;
        }

        /* renamed from: l */
        public int m36711l() {
            return this.f1004f;
        }

        /* renamed from: m */
        public int m36709m() {
            return this.f1005g;
        }

        /* renamed from: n */
        public int m36707n() {
            return this.f1007i;
        }

        /* renamed from: o */
        public int m36705o() {
            return this.f1006h;
        }

        /* renamed from: p */
        public int m36704p() {
            return this.f1009k;
        }

        /* renamed from: q */
        public final void m36703q() {
            if (this.f999a) {
                this.f1013o.m36809c(11);
            }
        }

        /* renamed from: r */
        public void m36702r() {
            if (this.f1012n.isFocused()) {
                this.f1014p.f939a = Selection.getSelectionStart(this.f1012n.getText());
                this.f1014p.f940b = Selection.getSelectionEnd(this.f1012n.getText());
                ((InputMethodManager) this.f1012n.getContext().getSystemService("input_method")).hideSoftInputFromWindow(this.f1012n.getWindowToken(), 0, this.f1014p);
            }
        }

        /* renamed from: s */
        public final void m36701s() {
            int selectionStart = this.f1012n.getSelectionStart();
            int i = selectionStart;
            if (selectionStart > 0) {
                i = selectionStart;
                if (this.f1012n.getText().charAt(selectionStart - 1) != '\n') {
                    this.f1012n.getText().insert(selectionStart, "\n");
                    i = selectionStart + 1;
                }
            }
            int i2 = i + 1;
            m36762a(new C5616b(-16777216, this.f1012n.getWidth(), this.f1012n.getText()), i);
            this.f1012n.getText().insert(i2, "\n");
            this.f1012n.setSelection(i2 + 1);
            this.f1012n.m36865a(this.f1004f, this.f1005g);
        }

        /* renamed from: t */
        public boolean m36700t() {
            return this.f999a;
        }

        /* renamed from: u */
        public boolean m36699u() {
            return this.f1000b;
        }

        /* renamed from: v */
        public boolean m36698v() {
            Editable text = this.f1012n.getText();
            int length = text.length();
            return ((ParagraphStyle[]) text.getSpans(0, length, ParagraphStyle.class)).length > 0 || ((QuoteSpan[]) text.getSpans(0, length, QuoteSpan.class)).length > 0 || ((CharacterStyle[]) text.getSpans(0, length, CharacterStyle.class)).length > 0 || this.f1010l != 16777215;
        }

        /* renamed from: w */
        public final boolean m36697w() {
            int i = this.f1005g;
            return i == 2 || i == 3;
        }

        /* renamed from: x */
        public boolean m36696x() {
            return this.f1002d;
        }

        /* renamed from: y */
        public final boolean m36695y() {
            String str = "--- waitingNext:" + this.f1006h + "," + this.f1007i + "," + this.f1005g;
            if (this.f1006h == this.f1007i && this.f1005g == 3) {
                m36772S();
                return true;
            }
            m36784G();
            return false;
        }

        /* renamed from: z */
        public void m36694z() {
            this.f1013o.m36809c(14);
        }
    }

    /* renamed from: com.android.ex.editstyledtext.EditStyledText$f */
    /* loaded from: classes-dex2jar.jar:com/android/ex/editstyledtext/EditStyledText$f.class */
    public class MenuItem$OnMenuItemClickListenerC1544f implements MenuItem.OnMenuItemClickListener {
        public MenuItem$OnMenuItemClickListenerC1544f() {
        }

        @Override // android.view.MenuItem.OnMenuItemClickListener
        public boolean onMenuItemClick(MenuItem menuItem) {
            return EditStyledText.this.onTextContextMenuItem(menuItem.getItemId());
        }
    }

    /* renamed from: com.android.ex.editstyledtext.EditStyledText$g */
    /* loaded from: classes-dex2jar.jar:com/android/ex/editstyledtext/EditStyledText$g.class */
    public static class C1545g extends ArrowKeyMovementMethod {

        /* renamed from: a */
        public C1543e f1018a;

        /* renamed from: b */
        public String f1019b = "StyledTextArrowKeyMethod";

        public C1545g(C1543e eVar) {
            this.f1018a = eVar;
        }

        /* renamed from: a */
        public final int m36693a(TextView textView) {
            return textView.getSelectionStart() == this.f1018a.m36705o() ? textView.getSelectionEnd() : textView.getSelectionStart();
        }

        /* renamed from: a */
        public final boolean m36692a(TextView textView, Spannable spannable, int i) {
            boolean z;
            String str = "--- executeDown: " + i;
            boolean z2 = false;
            switch (i) {
                case 19:
                    z = up(textView, spannable);
                    z2 = false | z;
                    break;
                case 20:
                    z = down(textView, spannable);
                    z2 = false | z;
                    break;
                case 21:
                    z = left(textView, spannable);
                    z2 = false | z;
                    break;
                case 22:
                    z = right(textView, spannable);
                    z2 = false | z;
                    break;
                case 23:
                    this.f1018a.m36789B();
                    z2 = true;
                    break;
            }
            return z2;
        }

        @Override // android.text.method.ArrowKeyMovementMethod, android.text.method.BaseMovementMethod
        public boolean down(TextView textView, Spannable spannable) {
            Layout layout = textView.getLayout();
            int a = m36693a(textView);
            int lineForOffset = layout.getLineForOffset(a);
            if (lineForOffset >= layout.getLineCount() - 1) {
                return true;
            }
            int i = lineForOffset + 1;
            this.f1018a.m36721h(layout.getParagraphDirection(lineForOffset) == layout.getParagraphDirection(i) ? layout.getOffsetForHorizontal(i, layout.getPrimaryHorizontal(a)) : layout.getLineStart(i));
            this.f1018a.m36790A();
            return true;
        }

        @Override // android.text.method.ArrowKeyMovementMethod, android.text.method.BaseMovementMethod
        public boolean left(TextView textView, Spannable spannable) {
            this.f1018a.m36721h(textView.getLayout().getOffsetToLeftOf(m36693a(textView)));
            this.f1018a.m36790A();
            return true;
        }

        @Override // android.text.method.BaseMovementMethod, android.text.method.MovementMethod
        public boolean onKeyDown(TextView textView, Spannable spannable, int i, KeyEvent keyEvent) {
            String str = "---onkeydown:" + i;
            this.f1018a.m36773R();
            return (this.f1018a.m36709m() == 1 || this.f1018a.m36709m() == 2) ? m36692a(textView, spannable, i) : super.onKeyDown(textView, spannable, i, keyEvent);
        }

        @Override // android.text.method.ArrowKeyMovementMethod, android.text.method.BaseMovementMethod
        public boolean right(TextView textView, Spannable spannable) {
            this.f1018a.m36721h(textView.getLayout().getOffsetToRightOf(m36693a(textView)));
            this.f1018a.m36790A();
            return true;
        }

        @Override // android.text.method.ArrowKeyMovementMethod, android.text.method.BaseMovementMethod
        public boolean up(TextView textView, Spannable spannable) {
            Layout layout = textView.getLayout();
            int a = m36693a(textView);
            int lineForOffset = layout.getLineForOffset(a);
            if (lineForOffset <= 0) {
                return true;
            }
            int i = lineForOffset - 1;
            this.f1018a.m36721h(layout.getParagraphDirection(lineForOffset) == layout.getParagraphDirection(i) ? layout.getOffsetForHorizontal(i, layout.getPrimaryHorizontal(a)) : layout.getLineStart(i));
            this.f1018a.m36790A();
            return true;
        }
    }

    /* renamed from: com.android.ex.editstyledtext.EditStyledText$h */
    /* loaded from: classes-dex2jar.jar:com/android/ex/editstyledtext/EditStyledText$h.class */
    public class C1546h {
        public C1546h(EditStyledText editStyledText, EditStyledText editStyledText2, AbstractC1559j jVar) {
        }
    }

    /* renamed from: com.android.ex.editstyledtext.EditStyledText$i */
    /* loaded from: classes-dex2jar.jar:com/android/ex/editstyledtext/EditStyledText$i.class */
    public static class C1547i {

        /* renamed from: a */
        public AlertDialog.Builder f1020a;

        /* renamed from: b */
        public AlertDialog f1021b;

        /* renamed from: c */
        public CharSequence f1022c;

        /* renamed from: d */
        public CharSequence f1023d;

        /* renamed from: e */
        public CharSequence f1024e;

        /* renamed from: f */
        public CharSequence f1025f;

        /* renamed from: g */
        public CharSequence[] f1026g;

        /* renamed from: h */
        public CharSequence[] f1027h;

        /* renamed from: i */
        public CharSequence[] f1028i;

        /* renamed from: j */
        public CharSequence[] f1029j;

        /* renamed from: k */
        public CharSequence[] f1030k;

        /* renamed from: l */
        public CharSequence[] f1031l;

        /* renamed from: m */
        public CharSequence[] f1032m;

        /* renamed from: n */
        public CharSequence f1033n;

        /* renamed from: o */
        public EditStyledText f1034o;

        /* renamed from: com.android.ex.editstyledtext.EditStyledText$i$a */
        /* loaded from: classes-dex2jar.jar:com/android/ex/editstyledtext/EditStyledText$i$a.class */
        public class DialogInterface$OnClickListenerC1548a implements DialogInterface.OnClickListener {
            public DialogInterface$OnClickListenerC1548a() {
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                Layout.Alignment alignment = Layout.Alignment.ALIGN_NORMAL;
                Layout.Alignment alignment2 = alignment;
                if (i != 0) {
                    if (i == 1) {
                        alignment2 = Layout.Alignment.ALIGN_CENTER;
                    } else if (i != 2) {
                        Log.e("EditStyledText", "--- onShowAlignAlertDialog: got illigal align.");
                        alignment2 = alignment;
                    } else {
                        alignment2 = Layout.Alignment.ALIGN_OPPOSITE;
                    }
                }
                C1547i.this.f1034o.m36864a(alignment2);
            }
        }

        /* renamed from: com.android.ex.editstyledtext.EditStyledText$i$b */
        /* loaded from: classes-dex2jar.jar:com/android/ex/editstyledtext/EditStyledText$i$b.class */
        public class DialogInterface$OnClickListenerC1549b implements DialogInterface.OnClickListener {
            public DialogInterface$OnClickListenerC1549b() {
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                String str = "mBuilder.onclick:" + i;
                C1547i.this.f1034o.m36841f(i);
            }
        }

        /* renamed from: com.android.ex.editstyledtext.EditStyledText$i$c */
        /* loaded from: classes-dex2jar.jar:com/android/ex/editstyledtext/EditStyledText$i$c.class */
        public class DialogInterface$OnClickListenerC1550c implements DialogInterface.OnClickListener {
            public DialogInterface$OnClickListenerC1550c() {
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                C1547i.this.f1034o.m36823t();
            }
        }

        /* renamed from: com.android.ex.editstyledtext.EditStyledText$i$d */
        /* loaded from: classes-dex2jar.jar:com/android/ex/editstyledtext/EditStyledText$i$d.class */
        public class DialogInterface$OnCancelListenerC1551d implements DialogInterface.OnCancelListener {
            public DialogInterface$OnCancelListenerC1551d() {
            }

            @Override // android.content.DialogInterface.OnCancelListener
            public void onCancel(DialogInterface dialogInterface) {
                C1547i.this.f1034o.m36823t();
            }
        }

        /* renamed from: com.android.ex.editstyledtext.EditStyledText$i$e */
        /* loaded from: classes-dex2jar.jar:com/android/ex/editstyledtext/EditStyledText$i$e.class */
        public class DialogInterface$OnClickListenerC1552e implements DialogInterface.OnClickListener {
            public DialogInterface$OnClickListenerC1552e() {
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                C1547i.this.f1034o.m36823t();
            }
        }

        /* renamed from: com.android.ex.editstyledtext.EditStyledText$i$f */
        /* loaded from: classes-dex2jar.jar:com/android/ex/editstyledtext/EditStyledText$i$f.class */
        public class View$OnClickListenerC1553f implements View.OnClickListener {
            public View$OnClickListenerC1553f() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                C1547i.this.f1034o.m36848d(view.getDrawingCacheBackgroundColor());
                if (C1547i.this.f1021b != null) {
                    C1547i.this.f1021b.setView(null);
                    C1547i.this.f1021b.dismiss();
                    C1547i.this.f1021b = null;
                    return;
                }
                Log.e("EditStyledText", "--- buildAndShowColorDialogue: can't find alertDialog");
            }
        }

        /* renamed from: com.android.ex.editstyledtext.EditStyledText$i$g */
        /* loaded from: classes-dex2jar.jar:com/android/ex/editstyledtext/EditStyledText$i$g.class */
        public class View$OnClickListenerC1554g implements View.OnClickListener {
            public View$OnClickListenerC1554g() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                C1547i.this.f1034o.setBackgroundColor(view.getDrawingCacheBackgroundColor());
                if (C1547i.this.f1021b != null) {
                    C1547i.this.f1021b.setView(null);
                    C1547i.this.f1021b.dismiss();
                    C1547i.this.f1021b = null;
                    return;
                }
                Log.e("EditStyledText", "--- buildAndShowColorDialogue: can't find alertDialog");
            }
        }

        /* renamed from: com.android.ex.editstyledtext.EditStyledText$i$h */
        /* loaded from: classes-dex2jar.jar:com/android/ex/editstyledtext/EditStyledText$i$h.class */
        public class DialogInterface$OnClickListenerC1555h implements DialogInterface.OnClickListener {
            public DialogInterface$OnClickListenerC1555h() {
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                C1547i.this.f1034o.setBackgroundColor(ViewCompat.MEASURED_SIZE_MASK);
            }
        }

        /* renamed from: com.android.ex.editstyledtext.EditStyledText$i$i */
        /* loaded from: classes-dex2jar.jar:com/android/ex/editstyledtext/EditStyledText$i$i.class */
        public class DialogInterface$OnClickListenerC1556i implements DialogInterface.OnClickListener {
            public DialogInterface$OnClickListenerC1556i() {
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                C1547i.this.f1034o.m36848d(-16777216);
            }
        }

        /* renamed from: com.android.ex.editstyledtext.EditStyledText$i$j */
        /* loaded from: classes-dex2jar.jar:com/android/ex/editstyledtext/EditStyledText$i$j.class */
        public class DialogInterface$OnCancelListenerC1557j implements DialogInterface.OnCancelListener {
            public DialogInterface$OnCancelListenerC1557j() {
            }

            @Override // android.content.DialogInterface.OnCancelListener
            public void onCancel(DialogInterface dialogInterface) {
                C1547i.this.f1034o.m36823t();
            }
        }

        /* renamed from: com.android.ex.editstyledtext.EditStyledText$i$k */
        /* loaded from: classes-dex2jar.jar:com/android/ex/editstyledtext/EditStyledText$i$k.class */
        public class DialogInterface$OnClickListenerC1558k implements DialogInterface.OnClickListener {
            public DialogInterface$OnClickListenerC1558k() {
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                String str = "mBuilder.onclick:" + i;
                C1547i.this.f1034o.m36844e(C1547i.this.f1034o.m36866a(Integer.parseInt((String) C1547i.this.f1029j[i])));
            }
        }

        public C1547i(EditStyledText editStyledText) {
            this.f1034o = editStyledText;
        }

        /* renamed from: a */
        public final void m36690a(int i, CharSequence charSequence, int[] iArr) {
            int a = this.f1034o.m36866a(50);
            int a2 = this.f1034o.m36866a(2);
            int a3 = this.f1034o.m36866a(15);
            this.f1020a.setTitle(charSequence);
            this.f1020a.setIcon(0);
            LinearLayout linearLayout = null;
            this.f1020a.setPositiveButton((CharSequence) null, (DialogInterface.OnClickListener) null);
            this.f1020a.setNegativeButton(17039360, new DialogInterface$OnClickListenerC1552e());
            this.f1020a.setItems((CharSequence[]) null, (DialogInterface.OnClickListener) null);
            LinearLayout linearLayout2 = new LinearLayout(this.f1034o.getContext());
            linearLayout2.setOrientation(1);
            linearLayout2.setGravity(1);
            linearLayout2.setPadding(a3, a3, a3, a3);
            for (int i2 = 0; i2 < iArr.length; i2++) {
                if (i2 % 5 == 0) {
                    linearLayout = new LinearLayout(this.f1034o.getContext());
                    linearLayout2.addView(linearLayout);
                }
                Button button = new Button(this.f1034o.getContext());
                button.setHeight(a);
                button.setWidth(a);
                button.setBackgroundDrawable(new C1513b(iArr[i2], a, a, a2));
                button.setDrawingCacheBackgroundColor(iArr[i2]);
                if (i == 0) {
                    button.setOnClickListener(new View$OnClickListenerC1553f());
                } else if (i == 1) {
                    button.setOnClickListener(new View$OnClickListenerC1554g());
                }
                linearLayout.addView(button);
            }
            if (i == 1) {
                this.f1020a.setPositiveButton(this.f1033n, new DialogInterface$OnClickListenerC1555h());
            } else if (i == 0) {
                this.f1020a.setPositiveButton(this.f1033n, new DialogInterface$OnClickListenerC1556i());
            }
            this.f1020a.setView(linearLayout2);
            this.f1020a.setCancelable(true);
            this.f1020a.setOnCancelListener(new DialogInterface$OnCancelListenerC1557j());
            this.f1021b = this.f1020a.show();
        }

        /* renamed from: a */
        public final void m36687a(CharSequence charSequence, CharSequence[] charSequenceArr, DialogInterface.OnClickListener onClickListener) {
            this.f1020a.setTitle(charSequence);
            this.f1020a.setIcon(0);
            this.f1020a.setPositiveButton((CharSequence) null, (DialogInterface.OnClickListener) null);
            this.f1020a.setNegativeButton(17039360, new DialogInterface$OnClickListenerC1550c());
            this.f1020a.setItems(charSequenceArr, onClickListener);
            this.f1020a.setView((View) null);
            this.f1020a.setCancelable(true);
            this.f1020a.setOnCancelListener(new DialogInterface$OnCancelListenerC1551d());
            this.f1020a.show();
        }

        /* renamed from: a */
        public final boolean m36691a() {
            if (this.f1020a == null) {
                Log.e("EditStyledText", "--- builder is null.");
                return false;
            } else if (this.f1024e != null) {
                return true;
            } else {
                Log.e("EditStyledText", "--- align alert params are null.");
                return false;
            }
        }

        /* renamed from: b */
        public final boolean m36686b() {
            CharSequence[] charSequenceArr;
            CharSequence[] charSequenceArr2;
            if (this.f1020a == null) {
                Log.e("EditStyledText", "--- builder is null.");
                return false;
            } else if (this.f1022c == null || (charSequenceArr = this.f1026g) == null || (charSequenceArr2 = this.f1027h) == null) {
                Log.e("EditStyledText", "--- color alert params are null.");
                return false;
            } else if (charSequenceArr.length == charSequenceArr2.length) {
                return true;
            } else {
                Log.e("EditStyledText", "--- the length of color alert params are different.");
                return false;
            }
        }

        /* renamed from: c */
        public final boolean m36684c() {
            if (this.f1020a == null) {
                Log.e("EditStyledText", "--- builder is null.");
                return false;
            } else if (this.f1025f != null) {
                return true;
            } else {
                Log.e("EditStyledText", "--- Marquee alert params are null.");
                return false;
            }
        }

        /* renamed from: d */
        public final boolean m36682d() {
            CharSequence[] charSequenceArr;
            CharSequence[] charSequenceArr2;
            CharSequence[] charSequenceArr3;
            if (this.f1020a == null) {
                Log.e("EditStyledText", "--- builder is null.");
                return false;
            } else if (this.f1023d == null || (charSequenceArr = this.f1028i) == null || (charSequenceArr2 = this.f1029j) == null || (charSequenceArr3 = this.f1030k) == null) {
                Log.e("EditStyledText", "--- size alert params are null.");
                return false;
            } else if (charSequenceArr.length == charSequenceArr2.length || charSequenceArr3.length == charSequenceArr2.length) {
                return true;
            } else {
                Log.e("EditStyledText", "--- the length of size alert params are different.");
                return false;
            }
        }

        /* renamed from: e */
        public final void m36680e() {
            if (m36691a()) {
                m36687a(this.f1024e, this.f1031l, new DialogInterface$OnClickListenerC1548a());
            }
        }

        /* renamed from: f */
        public final void m36678f() {
            if (m36686b()) {
                int[] iArr = new int[this.f1027h.length];
                for (int i = 0; i < iArr.length; i++) {
                    iArr[i] = Integer.parseInt((String) this.f1027h[i], 16) - 16777216;
                }
                m36690a(1, this.f1022c, iArr);
            }
        }

        /* renamed from: g */
        public final void m36676g() {
            if (m36686b()) {
                int[] iArr = new int[this.f1027h.length];
                for (int i = 0; i < iArr.length; i++) {
                    iArr[i] = Integer.parseInt((String) this.f1027h[i], 16) - 16777216;
                }
                m36690a(0, this.f1022c, iArr);
            }
        }

        /* renamed from: h */
        public final void m36674h() {
            if (m36684c()) {
                m36687a(this.f1025f, this.f1032m, new DialogInterface$OnClickListenerC1549b());
            }
        }

        /* renamed from: i */
        public final void m36672i() {
            if (m36682d()) {
                m36687a(this.f1023d, this.f1028i, new DialogInterface$OnClickListenerC1558k());
            }
        }
    }

    /* renamed from: com.android.ex.editstyledtext.EditStyledText$j */
    /* loaded from: classes-dex2jar.jar:com/android/ex/editstyledtext/EditStyledText$j.class */
    public interface AbstractC1559j {
    }

    /* renamed from: com.android.ex.editstyledtext.EditStyledText$k */
    /* loaded from: classes-dex2jar.jar:com/android/ex/editstyledtext/EditStyledText$k.class */
    public class C1560k implements AbstractC1559j {
        public C1560k(EditStyledText editStyledText) {
        }
    }

    /* renamed from: com.android.ex.editstyledtext.EditStyledText$l */
    /* loaded from: classes-dex2jar.jar:com/android/ex/editstyledtext/EditStyledText$l.class */
    public static class C1561l extends InputConnectionWrapper {

        /* renamed from: a */
        public EditStyledText f1046a;

        public C1561l(InputConnection inputConnection, EditStyledText editStyledText) {
            super(inputConnection, true);
            this.f1046a = editStyledText;
        }

        @Override // android.view.inputmethod.InputConnectionWrapper, android.view.inputmethod.InputConnection
        public boolean commitText(CharSequence charSequence, int i) {
            this.f1046a.f935d.m36773R();
            return super.commitText(charSequence, i);
        }

        @Override // android.view.inputmethod.InputConnectionWrapper, android.view.inputmethod.InputConnection
        public boolean finishComposingText() {
            if (!this.f1046a.m36832k() && !this.f1046a.m36835i() && !this.f1046a.m36833j()) {
                this.f1046a.m36829n();
            }
            return super.finishComposingText();
        }
    }

    public EditStyledText(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m36837h();
    }

    public EditStyledText(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m36837h();
    }

    /* renamed from: c */
    public static void m36851c(View view, Spannable spannable) {
        spannable.setSpan(f931j, 0, 0, 16777233);
    }

    /* renamed from: d */
    public static void m36847d(View view, Spannable spannable) {
        spannable.removeSpan(f931j);
    }

    /* renamed from: a */
    public final int m36866a(int i) {
        if (this.f932a <= 0.0f) {
            this.f932a = getContext().getResources().getDisplayMetrics().density;
        }
        return (int) ((i * m36842f()) + 0.5d);
    }

    /* renamed from: a */
    public final void m36867a() {
        ArrayList<AbstractC1542d> arrayList = this.f933b;
        if (arrayList != null) {
            Iterator<AbstractC1542d> it = arrayList.iterator();
            while (it.hasNext()) {
                it.next().m36793c();
            }
        }
    }

    /* renamed from: a */
    public final void m36865a(int i, int i2) {
        ArrayList<AbstractC1542d> arrayList = this.f933b;
        if (arrayList != null) {
            Iterator<AbstractC1542d> it = arrayList.iterator();
            while (it.hasNext()) {
                it.next().m36796a(i, i2);
            }
        }
    }

    /* renamed from: a */
    public void m36864a(Layout.Alignment alignment) {
        this.f935d.m36746b(alignment);
    }

    /* renamed from: a */
    public final void m36863a(MotionEvent motionEvent) {
        ArrayList<AbstractC1542d> arrayList = this.f933b;
        if (arrayList != null) {
            Iterator<AbstractC1542d> it = arrayList.iterator();
            while (it.hasNext()) {
                it.next().m36795a(motionEvent);
            }
        }
    }

    /* renamed from: b */
    public int m36857b(int i) {
        if (i < 0 || i > getText().length()) {
            return -16777216;
        }
        ForegroundColorSpan[] foregroundColorSpanArr = (ForegroundColorSpan[]) getText().getSpans(i, i, ForegroundColorSpan.class);
        if (foregroundColorSpanArr.length > 0) {
            return foregroundColorSpanArr[0].getForegroundColor();
        }
        return -16777216;
    }

    /* renamed from: b */
    public final void m36858b() {
        if (this.f936e != null && !this.f935d.f1003e) {
            this.f936e.finishComposingText();
            this.f935d.f1003e = true;
        }
    }

    /* renamed from: c */
    public int m36853c() {
        return this.f935d.m36716j();
    }

    /* renamed from: c */
    public final void m36852c(int i) {
        ArrayList<AbstractC1542d> arrayList = this.f933b;
        if (arrayList != null) {
            Iterator<AbstractC1542d> it = arrayList.iterator();
            while (it.hasNext()) {
                it.next().m36797a(i);
            }
        }
    }

    /* renamed from: d */
    public final int m36849d() {
        return 300;
    }

    /* renamed from: d */
    public void m36848d(int i) {
        this.f935d.m36749b(i, true);
    }

    @Override // android.widget.TextView, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        C1543e eVar = this.f935d;
        if (eVar != null) {
            eVar.m36788C();
        }
    }

    /* renamed from: e */
    public final int m36845e() {
        return m36866a(300);
    }

    /* renamed from: e */
    public void m36844e(int i) {
        this.f935d.m36738c(i, true);
    }

    /* renamed from: f */
    public final float m36842f() {
        if (this.f932a <= 0.0f) {
            this.f932a = getContext().getResources().getDisplayMetrics().density;
        }
        return this.f932a;
    }

    /* renamed from: f */
    public void m36841f(int i) {
        this.f935d.m36718i(i);
    }

    /* renamed from: g */
    public int m36839g() {
        return this.f935d.m36709m();
    }

    /* renamed from: h */
    public final void m36837h() {
        new C1546h(this, this, new C1560k());
        this.f937f = new C1547i(this);
        this.f935d = new C1543e(this, this.f937f);
        setMovementMethod(new C1545g(this.f935d));
        this.f934c = getBackground();
        requestFocus();
    }

    /* renamed from: i */
    public boolean m36835i() {
        ArrayList<AbstractC1542d> arrayList = this.f933b;
        boolean z = false;
        boolean z2 = false;
        if (arrayList != null) {
            Iterator<AbstractC1542d> it = arrayList.iterator();
            while (true) {
                z = z2;
                if (!it.hasNext()) {
                    break;
                }
                z2 |= it.next().m36798a();
            }
        }
        return z;
    }

    /* renamed from: j */
    public boolean m36833j() {
        return this.f935d.m36700t();
    }

    /* renamed from: k */
    public boolean m36832k() {
        return this.f935d.m36699u();
    }

    /* renamed from: l */
    public boolean m36831l() {
        return this.f935d.m36698v();
    }

    /* renamed from: m */
    public void m36830m() {
        this.f935d.m36694z();
    }

    /* renamed from: n */
    public void m36829n() {
        this.f935d.m36730e(21);
    }

    /* renamed from: o */
    public void m36828o() {
        this.f935d.m36789B();
    }

    @Override // android.widget.TextView, android.view.View
    public void onCreateContextMenu(ContextMenu contextMenu) {
        CharSequence charSequence;
        super.onCreateContextMenu(contextMenu);
        MenuItem$OnMenuItemClickListenerC1544f fVar = new MenuItem$OnMenuItemClickListenerC1544f();
        CharSequence charSequence2 = f928g;
        if (charSequence2 != null) {
            contextMenu.add(0, 16776961, 0, charSequence2).setOnMenuItemClickListener(fVar);
        }
        if (m36831l() && (charSequence = f929h) != null) {
            contextMenu.add(0, 16776962, 0, charSequence).setOnMenuItemClickListener(fVar);
        }
        if (this.f935d.m36734d()) {
            contextMenu.add(0, 16908322, 0, f930i).setOnMenuItemClickListener(fVar).setAlphabeticShortcut('v');
        }
    }

    @Override // android.widget.TextView, android.view.View
    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        this.f936e = new C1561l(super.onCreateInputConnection(editorInfo), this);
        return this.f936e;
    }

    @Override // android.widget.TextView, android.view.View
    public void onFocusChanged(boolean z, int i, Rect rect) {
        super.onFocusChanged(z, i, rect);
        if (z) {
            m36823t();
        } else if (!m36835i()) {
            m36829n();
        }
    }

    @Override // android.widget.TextView, android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedStyledTextState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedStyledTextState savedStyledTextState = (SavedStyledTextState) parcelable;
        super.onRestoreInstanceState(savedStyledTextState.getSuperState());
        setBackgroundColor(savedStyledTextState.f938a);
    }

    @Override // android.widget.TextView, android.view.View
    public Parcelable onSaveInstanceState() {
        SavedStyledTextState savedStyledTextState = new SavedStyledTextState(super.onSaveInstanceState());
        savedStyledTextState.f938a = this.f935d.m36716j();
        return savedStyledTextState;
    }

    @Override // android.widget.TextView
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        C1543e eVar = this.f935d;
        if (eVar != null) {
            eVar.m36765a(getText(), i, i2, i3);
            this.f935d.m36747b(getText(), i, i2, i3);
            if (i3 > i2) {
                this.f935d.m36750b(i, i + i3);
            } else if (i2 < i3) {
                this.f935d.m36773R();
            }
            if (this.f935d.m36696x()) {
                if (i3 > i2) {
                    this.f935d.m36790A();
                    m36828o();
                } else if (i3 < i2) {
                    this.f935d.m36730e(22);
                }
            }
        }
        super.onTextChanged(charSequence, i, i2, i3);
    }

    @Override // android.widget.TextView
    public boolean onTextContextMenuItem(int i) {
        boolean z = getSelectionStart() != getSelectionEnd();
        switch (i) {
            case 16776961:
                m36827p();
                return true;
            case 16776962:
                m36830m();
                return true;
            case 16776963:
                m36823t();
                return true;
            case 16776964:
                m36829n();
                return true;
            default:
                switch (i) {
                    case 16908319:
                        m36820w();
                        return true;
                    case 16908320:
                        if (z) {
                            m36824s();
                            return true;
                        }
                        this.f935d.m36742b(false);
                        m36824s();
                        return true;
                    case 16908321:
                        if (z) {
                            m36825r();
                            return true;
                        }
                        this.f935d.m36742b(false);
                        m36825r();
                        return true;
                    case 16908322:
                        m36822u();
                        return true;
                    default:
                        switch (i) {
                            case 16908328:
                                m36821v();
                                this.f935d.m36741c();
                                break;
                            case 16908329:
                                m36828o();
                                break;
                        }
                        return super.onTextContextMenuItem(i);
                }
        }
    }

    @Override // android.widget.TextView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z;
        if (motionEvent.getAction() == 1) {
            cancelLongPress();
            boolean j = m36833j();
            if (!j) {
                m36823t();
            }
            int selectionStart = Selection.getSelectionStart(getText());
            int selectionEnd = Selection.getSelectionEnd(getText());
            z = super.onTouchEvent(motionEvent);
            if (isFocused() && m36839g() == 0) {
                if (j) {
                    this.f935d.m36739c(Selection.getSelectionStart(getText()), Selection.getSelectionEnd(getText()));
                } else {
                    this.f935d.m36739c(selectionStart, selectionEnd);
                }
            }
            this.f935d.m36790A();
            this.f935d.m36773R();
        } else {
            z = super.onTouchEvent(motionEvent);
        }
        m36863a(motionEvent);
        return z;
    }

    /* renamed from: p */
    public void m36827p() {
        this.f935d.m36730e(12);
    }

    /* renamed from: q */
    public final void m36826q() {
        this.f935d.m36788C();
    }

    /* renamed from: r */
    public void m36825r() {
        this.f935d.m36730e(1);
    }

    /* renamed from: s */
    public void m36824s() {
        this.f935d.m36730e(7);
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
        if (i != 16777215) {
            super.setBackgroundColor(i);
        } else {
            setBackgroundDrawable(this.f934c);
        }
        this.f935d.m36727f(i);
        m36826q();
    }

    /* renamed from: t */
    public void m36823t() {
        this.f935d.m36730e(20);
    }

    /* renamed from: u */
    public void m36822u() {
        this.f935d.m36730e(2);
    }

    /* renamed from: v */
    public void m36821v() {
        this.f935d.m36753a(true);
    }

    /* renamed from: w */
    public void m36820w() {
        this.f935d.m36742b(true);
    }

    /* renamed from: x */
    public final void m36819x() {
        ArrayList<AbstractC1542d> arrayList = this.f933b;
        if (arrayList != null) {
            Iterator<AbstractC1542d> it = arrayList.iterator();
            while (it.hasNext() && !it.next().m36794b()) {
            }
        }
    }

    /* renamed from: y */
    public final void m36818y() {
        ArrayList<AbstractC1542d> arrayList = this.f933b;
        if (arrayList != null) {
            Iterator<AbstractC1542d> it = arrayList.iterator();
            while (it.hasNext() && !it.next().m36792d()) {
            }
        }
    }

    /* renamed from: z */
    public final void m36817z() {
        ArrayList<AbstractC1542d> arrayList = this.f933b;
        if (arrayList != null) {
            Iterator<AbstractC1542d> it = arrayList.iterator();
            while (it.hasNext() && !it.next().m36791e()) {
            }
        }
    }
}

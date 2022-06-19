package it.gmariotti.cardslib.library.view.component;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.PopupMenu;
import it.gmariotti.cardslib.library.C18061a;
import it.gmariotti.cardslib.library.p510a.C18092i;
import it.gmariotti.cardslib.library.view.p515b.AbstractC18154a;
import it.gmariotti.cardslib.library.view.p515b.C18159f;
/* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/view/component/CardHeaderView.class */
public class CardHeaderView extends FrameLayout {

    /* renamed from: a */
    protected int f63174a;

    /* renamed from: b */
    protected View f63175b;

    /* renamed from: c */
    protected View f63176c;

    /* renamed from: d */
    protected ViewGroup f63177d;

    /* renamed from: e */
    protected ViewGroup f63178e;

    /* renamed from: f */
    protected ImageButton f63179f;

    /* renamed from: g */
    protected ImageButton f63180g;

    /* renamed from: h */
    protected ImageButton f63181h;

    /* renamed from: i */
    protected C18092i f63182i;

    /* renamed from: j */
    protected boolean f63183j;

    /* renamed from: k */
    protected boolean f63184k;

    /* renamed from: l */
    protected PopupMenu f63185l;

    /* renamed from: m */
    protected AbstractC18154a f63186m;

    public CardHeaderView(Context context) {
        this(context, null, 0);
    }

    public CardHeaderView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    /* JADX WARN: Finally extract failed */
    public CardHeaderView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f63174a = C18061a.C18066e.base_header_layout;
        this.f63183j = false;
        this.f63184k = false;
        TypedArray obtainStyledAttributes = getContext().getTheme().obtainStyledAttributes(attributeSet, C18061a.C18068g.card_options, i, i);
        try {
            this.f63174a = obtainStyledAttributes.getResourceId(C18061a.C18068g.card_options_card_header_layout_resourceID, this.f63174a);
            obtainStyledAttributes.recycle();
            if (!isInEditMode()) {
                this.f63175b = ((LayoutInflater) getContext().getSystemService("layout_inflater")).inflate(this.f63174a, (ViewGroup) this, true);
                this.f63180g = (ImageButton) findViewById(C18061a.C18064c.card_header_button_expand);
                this.f63179f = (ImageButton) findViewById(C18061a.C18064c.card_header_button_overflow);
                this.f63181h = (ImageButton) findViewById(C18061a.C18064c.card_header_button_other);
                this.f63177d = (FrameLayout) findViewById(C18061a.C18064c.card_header_inner_frame);
                this.f63178e = (FrameLayout) findViewById(C18061a.C18064c.card_header_button_frame);
            }
            this.f63186m = C18159f.m4373a(context);
        } catch (Throwable th) {
            obtainStyledAttributes.recycle();
            throw th;
        }
    }

    /* renamed from: a */
    private void m4371a(int i, int i2, int i3) {
        ImageButton imageButton;
        ImageButton imageButton2;
        ImageButton imageButton3;
        if ((i == 0 || i == 8) && (imageButton3 = this.f63179f) != null) {
            imageButton3.setVisibility(i);
        }
        if ((i2 == 0 || i2 == 8) && (imageButton2 = this.f63180g) != null) {
            imageButton2.setVisibility(i2);
        }
        if ((i3 == 0 || i3 == 8) && (imageButton = this.f63181h) != null) {
            imageButton.setVisibility(i3);
        }
    }

    /* renamed from: b */
    public PopupMenu m4368b() {
        PopupMenu popupMenu = new PopupMenu(getContext(), this.f63179f);
        if (this.f63182i.m4460f() > C18092i.f63021i) {
            popupMenu.getMenuInflater().inflate(this.f63182i.m4460f(), popupMenu.getMenu());
        }
        popupMenu.setOnMenuItemClickListener(new PopupMenu.OnMenuItemClickListener() { // from class: it.gmariotti.cardslib.library.view.component.CardHeaderView.4
            @Override // android.widget.PopupMenu.OnMenuItemClickListener
            public final boolean onMenuItemClick(MenuItem menuItem) {
                if (CardHeaderView.this.f63182i.m4464b() != null) {
                    CardHeaderView.this.f63182i.m4464b();
                    CardHeaderView.this.f63182i.getParentCard();
                    return false;
                }
                return false;
            }
        });
        popupMenu.setOnDismissListener(new PopupMenu.OnDismissListener() { // from class: it.gmariotti.cardslib.library.view.component.CardHeaderView.5
            @Override // android.widget.PopupMenu.OnDismissListener
            public final void onDismiss(PopupMenu popupMenu2) {
                if (CardHeaderView.this.f63179f != null) {
                    CardHeaderView.this.f63179f.setSelected(false);
                }
            }
        });
        return popupMenu;
    }

    /* renamed from: a */
    public final ImageButton m4372a() {
        return this.f63180g;
    }

    /* renamed from: a */
    public final void m4370a(C18092i c18092i) {
        View view;
        ImageButton imageButton;
        this.f63182i = c18092i;
        if (c18092i != null) {
            if (c18092i.m4461e()) {
                m4371a(0, 8, 8);
                this.f63185l = null;
                ImageButton imageButton2 = this.f63179f;
                if (imageButton2 != null) {
                    boolean z = this.f63182i.m4460f() > C18092i.f63021i;
                    if (this.f63182i.m4463c() != null) {
                        this.f63185l = m4368b();
                        C18092i.AbstractC18096d m4463c = this.f63182i.m4463c();
                        this.f63182i.getParentCard();
                        boolean m4456a = m4463c.m4456a();
                        z = false;
                        if (this.f63185l.getMenu() != null) {
                            z = m4456a;
                            if (!this.f63185l.getMenu().hasVisibleItems()) {
                                z = false;
                            }
                        }
                    }
                    if (z) {
                        this.f63179f.setOnClickListener(new View.OnClickListener() { // from class: it.gmariotti.cardslib.library.view.component.CardHeaderView.3
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view2) {
                                if (CardHeaderView.this.f63185l == null) {
                                    CardHeaderView cardHeaderView = CardHeaderView.this;
                                    cardHeaderView.f63185l = cardHeaderView.m4368b();
                                }
                                if (CardHeaderView.this.f63185l != null) {
                                    CardHeaderView.this.f63185l.show();
                                    CardHeaderView.this.f63179f.setSelected(true);
                                }
                            }
                        });
                    } else if (this.f63182i.m4466a() == null) {
                        this.f63179f.setVisibility(8);
                    }
                } else if (imageButton2 != null) {
                    imageButton2.setVisibility(8);
                }
                if (this.f63185l == null && this.f63182i.m4466a() != null) {
                    final C18092i.AbstractC18093a m4466a = this.f63182i.m4466a();
                    if (m4466a == null || (imageButton = this.f63179f) == null) {
                        ImageButton imageButton3 = this.f63179f;
                        if (imageButton3 != null) {
                            imageButton3.setVisibility(8);
                        }
                    } else {
                        imageButton.setOnClickListener(new View.OnClickListener() { // from class: it.gmariotti.cardslib.library.view.component.CardHeaderView.1
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view2) {
                                CardHeaderView.this.f63182i.getParentCard();
                            }
                        });
                    }
                }
            } else if (this.f63182i.m4462d()) {
                m4371a(8, 0, 8);
            } else if (!this.f63182i.m4459g() || this.f63181h == null) {
                m4371a(8, 8, 8);
            } else {
                m4371a(8, 8, 0);
                if (this.f63181h != null) {
                    if (this.f63182i.m4457i() > 0) {
                        this.f63186m.mo4374a(this.f63181h, this.f63182i.m4457i());
                    }
                    if (this.f63182i.m4458h() != null) {
                        ImageButton imageButton4 = this.f63181h;
                        if (imageButton4 != null) {
                            imageButton4.setOnClickListener(new View.OnClickListener() { // from class: it.gmariotti.cardslib.library.view.component.CardHeaderView.2
                                @Override // android.view.View.OnClickListener
                                public final void onClick(View view2) {
                                    if (CardHeaderView.this.f63182i.m4458h() != null) {
                                        CardHeaderView.this.f63182i.m4458h();
                                        CardHeaderView.this.f63182i.getParentCard();
                                    }
                                }
                            });
                        }
                    } else {
                        ImageButton imageButton5 = this.f63181h;
                        if (imageButton5 != null) {
                            imageButton5.setClickable(false);
                        }
                    }
                }
            }
            ViewGroup viewGroup = this.f63177d;
            if (viewGroup == null) {
                return;
            }
            if (this.f63183j && !this.f63184k) {
                if (this.f63182i.getInnerLayout() < 0) {
                    return;
                }
                this.f63182i.m4465a(this.f63176c);
                return;
            }
            if (this.f63184k && viewGroup != null && (view = this.f63176c) != null) {
                viewGroup.removeView(view);
            }
            this.f63176c = this.f63182i.getInnerView(getContext(), this.f63177d);
        }
    }

    public void setForceReplaceInnerLayout(boolean z) {
        this.f63184k = z;
    }

    public void setRecycle(boolean z) {
        this.f63183j = z;
    }
}

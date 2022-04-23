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
import it.gmariotti.cardslib.library.a;
import it.gmariotti.cardslib.library.a.i;
import it.gmariotti.cardslib.library.view.b.a;
import it.gmariotti.cardslib.library.view.b.f;
/* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/view/component/CardHeaderView.class */
public class CardHeaderView extends FrameLayout {

    /* renamed from: a  reason: collision with root package name */
    protected int f36466a;

    /* renamed from: b  reason: collision with root package name */
    protected View f36467b;

    /* renamed from: c  reason: collision with root package name */
    protected View f36468c;

    /* renamed from: d  reason: collision with root package name */
    protected ViewGroup f36469d;
    protected ViewGroup e;
    protected ImageButton f;
    protected ImageButton g;
    protected ImageButton h;
    protected i i;
    protected boolean j;
    protected boolean k;
    protected PopupMenu l;
    protected a m;

    public CardHeaderView(Context context) {
        this(context, null, 0);
    }

    public CardHeaderView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    /* JADX WARN: Finally extract failed */
    public CardHeaderView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f36466a = a.e.base_header_layout;
        this.j = false;
        this.k = false;
        TypedArray obtainStyledAttributes = getContext().getTheme().obtainStyledAttributes(attributeSet, a.g.card_options, i, i);
        try {
            this.f36466a = obtainStyledAttributes.getResourceId(a.g.card_options_card_header_layout_resourceID, this.f36466a);
            obtainStyledAttributes.recycle();
            if (!isInEditMode()) {
                this.f36467b = ((LayoutInflater) getContext().getSystemService("layout_inflater")).inflate(this.f36466a, (ViewGroup) this, true);
                this.g = (ImageButton) findViewById(a.c.card_header_button_expand);
                this.f = (ImageButton) findViewById(a.c.card_header_button_overflow);
                this.h = (ImageButton) findViewById(a.c.card_header_button_other);
                this.f36469d = (FrameLayout) findViewById(a.c.card_header_inner_frame);
                this.e = (FrameLayout) findViewById(a.c.card_header_button_frame);
            }
            this.m = f.a(context);
        } catch (Throwable th) {
            obtainStyledAttributes.recycle();
            throw th;
        }
    }

    private void a(int i, int i2, int i3) {
        ImageButton imageButton;
        ImageButton imageButton2;
        ImageButton imageButton3;
        if ((i == 0 || i == 8) && (imageButton3 = this.f) != null) {
            imageButton3.setVisibility(i);
        }
        if ((i2 == 0 || i2 == 8) && (imageButton2 = this.g) != null) {
            imageButton2.setVisibility(i2);
        }
        if ((i3 == 0 || i3 == 8) && (imageButton = this.h) != null) {
            imageButton.setVisibility(i3);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public PopupMenu b() {
        PopupMenu popupMenu = new PopupMenu(getContext(), this.f);
        if (this.i.f() > i.i) {
            popupMenu.getMenuInflater().inflate(this.i.f(), popupMenu.getMenu());
        }
        popupMenu.setOnMenuItemClickListener(new PopupMenu.OnMenuItemClickListener() { // from class: it.gmariotti.cardslib.library.view.component.CardHeaderView.4
            @Override // android.widget.PopupMenu.OnMenuItemClickListener
            public final boolean onMenuItemClick(MenuItem menuItem) {
                if (CardHeaderView.this.i.b() == null) {
                    return false;
                }
                CardHeaderView.this.i.b();
                CardHeaderView.this.i.getParentCard();
                return false;
            }
        });
        popupMenu.setOnDismissListener(new PopupMenu.OnDismissListener() { // from class: it.gmariotti.cardslib.library.view.component.CardHeaderView.5
            @Override // android.widget.PopupMenu.OnDismissListener
            public final void onDismiss(PopupMenu popupMenu2) {
                if (CardHeaderView.this.f != null) {
                    CardHeaderView.this.f.setSelected(false);
                }
            }
        });
        return popupMenu;
    }

    public final ImageButton a() {
        return this.g;
    }

    public final void a(i iVar) {
        View view;
        ImageButton imageButton;
        this.i = iVar;
        if (iVar != null) {
            if (iVar.e()) {
                a(0, 8, 8);
                this.l = null;
                ImageButton imageButton2 = this.f;
                if (imageButton2 != null) {
                    boolean z = this.i.f() > i.i;
                    if (this.i.c() != null) {
                        this.l = b();
                        i.d c2 = this.i.c();
                        this.i.getParentCard();
                        z = c2.a();
                        z = false;
                        if (this.l.getMenu() != null && !this.l.getMenu().hasVisibleItems()) {
                            z = false;
                        }
                    }
                    if (z) {
                        this.f.setOnClickListener(new View.OnClickListener() { // from class: it.gmariotti.cardslib.library.view.component.CardHeaderView.3
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view2) {
                                if (CardHeaderView.this.l == null) {
                                    CardHeaderView cardHeaderView = CardHeaderView.this;
                                    cardHeaderView.l = cardHeaderView.b();
                                }
                                if (CardHeaderView.this.l != null) {
                                    CardHeaderView.this.l.show();
                                    CardHeaderView.this.f.setSelected(true);
                                }
                            }
                        });
                    } else if (this.i.a() == null) {
                        this.f.setVisibility(8);
                    }
                } else if (imageButton2 != null) {
                    imageButton2.setVisibility(8);
                }
                if (this.l == null && this.i.a() != null) {
                    final i.a a2 = this.i.a();
                    if (a2 == null || (imageButton = this.f) == null) {
                        ImageButton imageButton3 = this.f;
                        if (imageButton3 != null) {
                            imageButton3.setVisibility(8);
                        }
                    } else {
                        imageButton.setOnClickListener(new View.OnClickListener() { // from class: it.gmariotti.cardslib.library.view.component.CardHeaderView.1
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view2) {
                                CardHeaderView.this.i.getParentCard();
                            }
                        });
                    }
                }
            } else if (this.i.d()) {
                a(8, 0, 8);
            } else if (!this.i.g() || this.h == null) {
                a(8, 8, 8);
            } else {
                a(8, 8, 0);
                if (this.h != null) {
                    if (this.i.i() > 0) {
                        this.m.a(this.h, this.i.i());
                    }
                    if (this.i.h() != null) {
                        ImageButton imageButton4 = this.h;
                        if (imageButton4 != null) {
                            imageButton4.setOnClickListener(new View.OnClickListener() { // from class: it.gmariotti.cardslib.library.view.component.CardHeaderView.2
                                @Override // android.view.View.OnClickListener
                                public final void onClick(View view2) {
                                    if (CardHeaderView.this.i.h() != null) {
                                        CardHeaderView.this.i.h();
                                        CardHeaderView.this.i.getParentCard();
                                    }
                                }
                            });
                        }
                    } else {
                        ImageButton imageButton5 = this.h;
                        if (imageButton5 != null) {
                            imageButton5.setClickable(false);
                        }
                    }
                }
            }
            ViewGroup viewGroup = this.f36469d;
            if (viewGroup == null) {
                return;
            }
            if (!this.j || this.k) {
                if (!(!this.k || viewGroup == null || (view = this.f36468c) == null)) {
                    viewGroup.removeView(view);
                }
                this.f36468c = this.i.getInnerView(getContext(), this.f36469d);
            } else if (this.i.getInnerLayout() >= 0) {
                this.i.a(this.f36468c);
            }
        }
    }

    public void setForceReplaceInnerLayout(boolean z) {
        this.k = z;
    }

    public void setRecycle(boolean z) {
        this.j = z;
    }
}

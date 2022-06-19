.class public abstract Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;,
        Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;,
        Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$PositionChangedListener;
    }
.end annotation


# static fields
.field private static aa:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;

.field private static final ab:I

.field private static final ac:I

.field private static final r:I

.field private static final s:I

.field private static final t:I

.field private static final u:I

.field private static final v:F


# instance fields
.field private A:Lcom/callapp/contacts/activity/contact/details/ColorTransitionCalculator;

.field private B:Lcom/callapp/contacts/activity/contact/details/ColorTransitionCalculator;

.field private C:Lcom/callapp/contacts/activity/contact/details/ColorTransitionCalculator;

.field private D:Lcom/callapp/contacts/activity/contact/details/ColorTransitionCalculator;

.field private E:Lcom/callapp/contacts/activity/contact/details/ColorTransitionCalculator;

.field private F:Lcom/callapp/contacts/activity/contact/details/ColorTransitionCalculator;

.field private final G:Lcom/google/android/material/appbar/AppBarLayout;

.field private final H:Landroid/widget/TextView;

.field private final I:Landroid/widget/TextView;

.field private final J:Landroid/view/View;

.field private final K:Landroid/view/View;

.field private final L:Landroid/widget/FrameLayout;

.field private M:Z

.field private N:Z

.field private O:Z

.field private P:Lcom/callapp/contacts/activity/contact/details/AppBarCollapseObserver;

.field private final Q:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$PositionChangedListener;

.field private final R:Landroid/widget/ImageView;

.field private final S:Landroid/widget/ImageView;

.field private final T:Landroid/view/View;

.field private final U:Landroid/widget/ImageView;

.field private final V:Landroid/view/View;

.field private final W:Landroid/view/View;

.field private final X:Landroidx/lifecycle/j;

.field private Y:Lcom/callapp/contacts/activity/contact/header/ThemeState;

.field private final Z:Landroid/graphics/drawable/Drawable;

.field public final a:Landroid/view/View;

.field private ad:Landroid/animation/ValueAnimator;

.field private ae:F

.field private af:Z

.field private ag:F

.field private ah:Z

.field private ai:Landroid/widget/FrameLayout;

.field private aj:Z

.field private ak:Landroid/view/View;

.field private al:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;

.field protected final b:Landroid/widget/ImageView;

.field protected final c:Landroid/widget/ImageView;

.field protected final d:Landroid/widget/ImageView;

.field protected final e:Lcom/callapp/contacts/widget/CallAppCheckBox;

.field protected final f:Landroid/widget/ImageView;

.field protected final g:Landroid/widget/ImageView;

.field protected final h:Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;

.field protected final i:Lcom/callapp/contacts/widget/ProfilePictureView;

.field protected final j:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

.field protected k:Landroid/widget/TextView;

.field protected l:Landroid/widget/LinearLayout;

.field protected final m:I

.field protected final n:I

.field protected final o:I

.field protected final p:I

.field protected q:Landroid/widget/TextView;

.field private w:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$FlingListener;

.field private x:Z

.field private y:Lcom/callapp/contacts/activity/contact/details/ColorTransitionCalculator;

.field private z:Lcom/callapp/contacts/activity/contact/details/ColorTransitionCalculator;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 39
    invoke-static {}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1302b5

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ThemeUtils;->c(Landroid/content/Context;I)I

    move-result v0

    sput v0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->r:I

    .line 40
    invoke-static {}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1300ef

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ThemeUtils;->c(Landroid/content/Context;I)I

    move-result v0

    sput v0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->s:I

    const v0, 0x7f0700ed

    .line 41
    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->getDimen(I)I

    move-result v0

    sput v0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->t:I

    const v1, 0x7f0700f0

    .line 42
    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->getDimen(I)I

    move-result v1

    sput v1, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->u:I

    const v2, 0x7f0700ef

    .line 43
    invoke-static {v2}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->getDimen(I)I

    move-result v2

    int-to-float v2, v2

    int-to-float v1, v1

    div-float/2addr v2, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v2

    sput v1, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->v:F

    .line 91
    sget-object v1, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;->SEMI_OPEN:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;

    sput-object v1, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->aa:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;

    .line 92
    invoke-static {}, Lcom/callapp/contacts/activity/contact/details/AppBarCollapseObserver;->getSemiHeight()F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v1, v0

    sput v1, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->ab:I

    const v0, 0x7f0700f1

    .line 93
    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->getDimen(I)I

    move-result v0

    const v1, 0x7f0700ee

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->getDimen(I)I

    move-result v1

    sub-int/2addr v0, v1

    sput v0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->ac:I

    return-void
.end method

.method public constructor <init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;Landroid/view/View;Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$PositionChangedListener;Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$FlingListener;ZLandroidx/lifecycle/j;Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController$contactDetailsThemeChangeListener;)V
    .locals 3

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 76
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->N:Z

    .line 89
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->di:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/activity/contact/header/ThemeState;

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->Y:Lcom/callapp/contacts/activity/contact/header/ThemeState;

    const/4 v0, 0x0

    .line 96
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->af:Z

    .line 98
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->ah:Z

    .line 105
    invoke-static {}, Lcom/callapp/contacts/util/Activities;->getScreenOrientation()I

    move-result v0

    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getScreenHeight(I)I

    move-result v0

    invoke-static {}, Lcom/callapp/contacts/util/Activities;->getStatusBarHeight()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->m:I

    const v1, 0x7f0700ee

    .line 106
    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->getDimen(I)I

    move-result v1

    iput v1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->n:I

    const v2, 0x7f0700e9

    .line 107
    invoke-static {v2}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->getDimen(I)I

    move-result v2

    iput v2, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->o:I

    neg-int v2, v2

    add-int/2addr v2, v0

    sub-int/2addr v2, v1

    .line 108
    iput v2, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->p:I

    .line 120
    iput-boolean p5, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->x:Z

    .line 121
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->j:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    .line 122
    iput-object p4, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->w:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$FlingListener;

    .line 123
    iput-object p6, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->X:Landroidx/lifecycle/j;

    const p4, 0x7f0a0485

    .line 124
    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    iput-object p4, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->V:Landroid/view/View;

    const v0, 0x7f0a0483

    .line 125
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->W:Landroid/view/View;

    const v1, 0x7f0a08fc

    .line 126
    invoke-virtual {p4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    iput-object p4, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->ak:Landroid/view/View;

    const p4, 0x7f0a02c0

    .line 127
    invoke-virtual {v0, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/FrameLayout;

    iput-object p4, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->ai:Landroid/widget/FrameLayout;

    .line 128
    iget-object p4, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->ak:Landroid/view/View;

    const v1, 0x7f0a0614

    invoke-virtual {p4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/TextView;

    iput-object p4, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->H:Landroid/widget/TextView;

    .line 129
    iget-object p4, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->ak:Landroid/view/View;

    const v1, 0x7f0a01fb

    invoke-virtual {p4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/TextView;

    iput-object p4, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->I:Landroid/widget/TextView;

    const p4, 0x7f0a0271

    .line 130
    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->R:Landroid/widget/ImageView;

    const p4, 0x7f0a0272

    .line 131
    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->U:Landroid/widget/ImageView;

    const p4, 0x7f0a0274

    .line 132
    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    iput-object p4, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->T:Landroid/view/View;

    const p4, 0x7f0a0273

    .line 133
    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->S:Landroid/widget/ImageView;

    const p4, 0x7f0a06e9

    .line 134
    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    iput-object p4, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->J:Landroid/view/View;

    const v1, 0x7f0a06e8

    .line 135
    invoke-virtual {p4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Lcom/callapp/contacts/widget/ProfilePictureView;

    iput-object p4, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->i:Lcom/callapp/contacts/widget/ProfilePictureView;

    const p4, 0x7f0a0441

    .line 136
    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/FrameLayout;

    iput-object p4, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->L:Landroid/widget/FrameLayout;

    const p4, 0x7f0a0277

    .line 137
    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->c:Landroid/widget/ImageView;

    const p4, 0x7f0a0278

    .line 138
    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->d:Landroid/widget/ImageView;

    const p4, 0x7f0a0275

    .line 139
    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Lcom/callapp/contacts/widget/CallAppCheckBox;

    iput-object p4, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->e:Lcom/callapp/contacts/widget/CallAppCheckBox;

    const p4, 0x7f0a0270

    .line 140
    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->b:Landroid/widget/ImageView;

    const p4, 0x7f0a0276

    .line 141
    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->f:Landroid/widget/ImageView;

    const p4, 0x7f0a0101

    .line 142
    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->g:Landroid/widget/ImageView;

    const p4, 0x7f0a00e3

    .line 143
    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Lcom/google/android/material/appbar/AppBarLayout;

    iput-object p4, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->G:Lcom/google/android/material/appbar/AppBarLayout;

    .line 144
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->Y:Lcom/callapp/contacts/activity/contact/header/ThemeState;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/contact/header/ThemeState;->getParallaxBackgroundColor()I

    move-result v1

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {p4, v1}, Lcom/google/android/material/appbar/AppBarLayout;->setBackgroundColor(I)V

    const p4, 0x7f0a0297

    .line 145
    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    iput-object p4, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->a:Landroid/view/View;

    const v1, 0x7f0a027b

    .line 146
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->K:Landroid/view/View;

    .line 147
    invoke-virtual {p4}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p4

    iput-object p4, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->Z:Landroid/graphics/drawable/Drawable;

    .line 148
    iput-object p3, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->Q:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$PositionChangedListener;

    .line 149
    new-instance p3, Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;

    invoke-interface {p1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getRealContext()Landroid/content/Context;

    move-result-object p1

    const p4, 0x7f0a027d

    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/view/ViewGroup;

    invoke-direct {p3, p1, p4, p5, p7}, Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;ZLcom/callapp/contacts/activity/contact/header/ThemeChangeViewController$contactDetailsThemeChangeListener;)V

    iput-object p3, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->h:Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;

    .line 150
    invoke-virtual {p6, p3}, Landroidx/lifecycle/j;->addObserver(Landroidx/lifecycle/o;)V

    const p1, 0x7f0a06e2

    .line 151
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->k:Landroid/widget/TextView;

    const p1, 0x7f0a06e1

    .line 152
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->l:Landroid/widget/LinearLayout;

    .line 153
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->k:Landroid/widget/TextView;

    const p3, 0x7f120546

    invoke-static {p3}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f0a02f1

    .line 154
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->q:Landroid/widget/TextView;

    const p2, 0x7f120614

    .line 155
    invoke-static {p2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 156
    invoke-virtual {p0, p5}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->a(Z)V

    .line 3579
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 3580
    check-cast p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$d;

    .line 3952
    iget-object p1, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$d;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    .line 3580
    check-cast p1, Lcom/callapp/contacts/activity/contact/details/AppBarCollapseObserver;

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->P:Lcom/callapp/contacts/activity/contact/details/AppBarCollapseObserver;

    .line 3581
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->getCoordinatorObserver()Lcom/callapp/contacts/activity/contact/details/AppBarCollapseObserver$CoordinatorLayoutObserver;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->al:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;

    .line 3582
    sget p2, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->ac:I

    int-to-float p2, p2

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2, p3}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;->a(FF)V

    .line 3583
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->P:Lcom/callapp/contacts/activity/contact/details/AppBarCollapseObserver;

    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->al:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;

    .line 4056
    iget-object p3, p1, Lcom/callapp/contacts/activity/contact/details/AppBarCollapseObserver;->a:Ljava/util/ArrayList;

    monitor-enter p3

    .line 4057
    :try_start_0
    iget-object p1, p1, Lcom/callapp/contacts/activity/contact/details/AppBarCollapseObserver;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4058
    monitor-exit p3

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method static synthetic A(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)F
    .locals 0

    .line 38
    iget p0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->ae:F

    return p0
.end method

.method static synthetic B(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)Landroid/widget/ImageView;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->R:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic C(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)Landroid/widget/ImageView;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->U:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic D(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)Landroid/widget/ImageView;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->S:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;F)F
    .locals 0

    .line 38
    iput p1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->ae:F

    return p1
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;Lcom/google/android/material/appbar/AppBarLayout$Behavior;I)I
    .locals 2

    .line 6456
    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout$Behavior;->getTopAndBottomOffset()I

    move-result p0

    const/high16 v0, -0x80000000

    if-lt p0, v0, :cond_2

    const v1, 0x7fffffff

    if-gt p0, v1, :cond_2

    if-ge p2, v0, :cond_0

    const/high16 p2, -0x80000000

    goto :goto_0

    :cond_0
    if-le p2, v1, :cond_1

    const p2, 0x7fffffff

    :cond_1
    :goto_0
    if-eq p0, p2, :cond_2

    .line 6465
    invoke-virtual {p1, p2}, Lcom/google/android/material/appbar/AppBarLayout$Behavior;->b(I)Z

    sub-int/2addr p0, p2

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method private a(IFI)Landroid/animation/ValueAnimator;
    .locals 2

    .line 440
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->G:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v0}, Lcom/google/android/material/appbar/AppBarLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$d;

    .line 4952
    iget-object v0, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$d;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    .line 440
    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout$Behavior;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 444
    :cond_0
    new-instance v1, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$1;

    invoke-direct {v1, p0, v0}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$1;-><init>(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;Lcom/google/android/material/appbar/AppBarLayout$Behavior;)V

    invoke-static {p1, p3, p2, v1}, Lcom/callapp/contacts/util/animation/CallappAnimationUtils;->a(IIFLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 450
    new-instance p2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p1
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;)Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;
    .locals 0

    .line 38
    sput-object p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->aa:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;

    return-object p0
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$PositionChangedListener;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->Q:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$PositionChangedListener;

    return-object p0
.end method

.method private a(I)V
    .locals 1

    .line 647
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->G:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v0, p1}, Lcom/google/android/material/appbar/AppBarLayout;->setBackgroundColor(I)V

    .line 648
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->i()V

    return-void
.end method

.method private a(IFZ)V
    .locals 2

    .line 517
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->G:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v0}, Lcom/google/android/material/appbar/AppBarLayout;->getY()F

    move-result v0

    float-to-int v0, v0

    .line 518
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->G:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v1}, Lcom/google/android/material/appbar/AppBarLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$d;

    .line 5952
    iget-object v1, v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$d;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    .line 518
    check-cast v1, Lcom/google/android/material/appbar/AppBarLayout$Behavior;

    if-eqz v1, :cond_1

    if-eqz p3, :cond_0

    .line 521
    invoke-direct {p0, v0, p2, p1}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->a(IFI)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->ad:Landroid/animation/ValueAnimator;

    .line 522
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    .line 524
    :cond_0
    invoke-virtual {v1, p1}, Lcom/google/android/material/appbar/AppBarLayout$Behavior;->b(I)Z

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;Z)Z
    .locals 0

    .line 38
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->af:Z

    return p1
.end method

.method static synthetic b(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;F)F
    .locals 0

    .line 38
    iput p1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->ag:F

    return p1
.end method

.method static synthetic b(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)Z
    .locals 0

    .line 38
    iget-boolean p0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->x:Z

    return p0
.end method

.method static synthetic b(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;Z)Z
    .locals 0

    .line 38
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->ah:Z

    return p1
.end method

.method static synthetic c()I
    .locals 1

    .line 38
    sget v0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->ac:I

    return v0
.end method

.method static synthetic c(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;Z)V
    .locals 2

    .line 6400
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->x:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->M:Z

    if-nez v0, :cond_4

    if-eqz p1, :cond_0

    .line 6401
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->ai:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    :cond_0
    if-nez p1, :cond_4

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->ai:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    .line 6402
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->ai:Landroid/widget/FrameLayout;

    invoke-static {v0, p1}, Lcom/callapp/contacts/util/ViewUtils;->b(Landroid/view/View;Z)V

    if-eqz p1, :cond_2

    .line 6404
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->isIncomingCallRingingState()Z

    move-result v0

    if-nez v0, :cond_3

    .line 6405
    :cond_2
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->K:Landroid/view/View;

    invoke-static {v0, p1}, Lcom/callapp/contacts/util/ViewUtils;->b(Landroid/view/View;Z)V

    .line 6407
    :cond_3
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->a(Z)V

    :cond_4
    return-void
.end method

.method static synthetic c(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)Z
    .locals 0

    .line 38
    iget-boolean p0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->M:Z

    return p0
.end method

.method static synthetic d()F
    .locals 1

    .line 38
    sget v0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->v:F

    return v0
.end method

.method static synthetic d(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->Z:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic d(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;Z)Z
    .locals 0

    .line 38
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->N:Z

    return p1
.end method

.method static synthetic e()I
    .locals 1

    .line 38
    sget v0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->r:I

    return v0
.end method

.method static synthetic e(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)Landroid/view/View;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->T:Landroid/view/View;

    return-object p0
.end method

.method static synthetic f()I
    .locals 1

    .line 38
    sget v0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->s:I

    return v0
.end method

.method static synthetic f(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)Landroid/widget/TextView;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->I:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic g()I
    .locals 1

    .line 38
    sget v0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->ab:I

    return v0
.end method

.method static synthetic g(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)Lcom/callapp/contacts/activity/contact/details/ColorTransitionCalculator;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->A:Lcom/callapp/contacts/activity/contact/details/ColorTransitionCalculator;

    return-object p0
.end method

.method private static getAppContext()Landroid/content/Context;
    .locals 1

    .line 694
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentPosition()Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;
    .locals 1

    .line 435
    sget-object v0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->aa:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;

    return-object v0
.end method

.method static getDimen(I)I
    .locals 1

    .line 698
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method static synthetic h()Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;
    .locals 1

    .line 38
    sget-object v0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->aa:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;

    return-object v0
.end method

.method static synthetic h(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)Lcom/callapp/contacts/activity/contact/details/ColorTransitionCalculator;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->C:Lcom/callapp/contacts/activity/contact/details/ColorTransitionCalculator;

    return-object p0
.end method

.method static synthetic i(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)Landroid/widget/TextView;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->H:Landroid/widget/TextView;

    return-object p0
.end method

.method private i()V
    .locals 1

    .line 683
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->x:Z

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->a(Z)V

    .line 684
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->P:Lcom/callapp/contacts/activity/contact/details/AppBarCollapseObserver;

    if-eqz v0, :cond_0

    .line 685
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/details/AppBarCollapseObserver;->b()V

    :cond_0
    return-void
.end method

.method static synthetic j(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)Lcom/callapp/contacts/activity/contact/details/ColorTransitionCalculator;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->z:Lcom/callapp/contacts/activity/contact/details/ColorTransitionCalculator;

    return-object p0
.end method

.method static synthetic k(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)Lcom/callapp/contacts/activity/contact/details/ColorTransitionCalculator;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->D:Lcom/callapp/contacts/activity/contact/details/ColorTransitionCalculator;

    return-object p0
.end method

.method static synthetic l(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)Lcom/callapp/contacts/activity/contact/details/ColorTransitionCalculator;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->E:Lcom/callapp/contacts/activity/contact/details/ColorTransitionCalculator;

    return-object p0
.end method

.method static synthetic m(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)Lcom/callapp/contacts/activity/contact/details/ColorTransitionCalculator;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->F:Lcom/callapp/contacts/activity/contact/details/ColorTransitionCalculator;

    return-object p0
.end method

.method static synthetic n(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)Landroid/view/View;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->J:Landroid/view/View;

    return-object p0
.end method

.method static synthetic o(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)Z
    .locals 0

    .line 38
    iget-boolean p0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->N:Z

    return p0
.end method

.method static synthetic p(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)Landroid/widget/FrameLayout;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->L:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic q(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)Landroid/view/View;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->V:Landroid/view/View;

    return-object p0
.end method

.method static synthetic r(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)Z
    .locals 0

    .line 38
    iget-boolean p0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->aj:Z

    return p0
.end method

.method static synthetic s(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)Landroid/view/View;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->ak:Landroid/view/View;

    return-object p0
.end method

.method private setColorToActionButtons(Lcom/callapp/contacts/activity/contact/header/ThemeState;)V
    .locals 2

    .line 652
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$3;

    invoke-direct {v1, p0, p1}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$3;-><init>(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;Lcom/callapp/contacts/activity/contact/header/ThemeState;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic t(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)Landroid/view/View;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->K:Landroid/view/View;

    return-object p0
.end method

.method static synthetic u(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)Lcom/callapp/contacts/activity/contact/details/ColorTransitionCalculator;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->B:Lcom/callapp/contacts/activity/contact/details/ColorTransitionCalculator;

    return-object p0
.end method

.method static synthetic v(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$FlingListener;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->w:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$FlingListener;

    return-object p0
.end method

.method static synthetic w(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)Lcom/callapp/contacts/activity/contact/details/ColorTransitionCalculator;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->y:Lcom/callapp/contacts/activity/contact/details/ColorTransitionCalculator;

    return-object p0
.end method

.method static synthetic x(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)Z
    .locals 0

    .line 38
    iget-boolean p0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->ah:Z

    return p0
.end method

.method static synthetic y(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)F
    .locals 0

    .line 38
    iget p0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->ag:F

    return p0
.end method

.method static synthetic z(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)Z
    .locals 0

    .line 38
    iget-boolean p0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->af:Z

    return p0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 161
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->X:Landroidx/lifecycle/j;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->h:Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;

    if-eqz v1, :cond_0

    .line 162
    invoke-virtual {v0, v1}, Landroidx/lifecycle/j;->removeObserver(Landroidx/lifecycle/o;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;FZ)V
    .locals 2

    .line 500
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->ad:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 501
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 503
    :cond_0
    sget-object v0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$4;->b:[I

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 p2, 0x3

    if-eq p1, p2, :cond_1

    goto :goto_0

    .line 511
    :cond_1
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->G:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {p1, v0, p3}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(ZZ)V

    :goto_0
    return-void

    .line 508
    :cond_2
    sget p1, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->ac:I

    invoke-direct {p0, p1, p2, p3}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->a(IFZ)V

    return-void

    .line 505
    :cond_3
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->G:Lcom/google/android/material/appbar/AppBarLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p3}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(ZZ)V

    return-void
.end method

.method public final a(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;Z)V
    .locals 1

    .line 495
    sget v0, Lcom/callapp/contacts/util/animation/CallappAnimationUtils;->d:F

    invoke-virtual {p0, p1, v0, p2}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->a(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;FZ)V

    return-void
.end method

.method public final a(Lcom/callapp/contacts/activity/contact/header/ThemeState;)V
    .locals 0

    .line 641
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->Y:Lcom/callapp/contacts/activity/contact/header/ThemeState;

    .line 642
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/header/ThemeState;->getParallaxBackgroundColor()I

    move-result p1

    invoke-static {p1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->a(I)V

    return-void
.end method

.method public final a(Z)V
    .locals 10

    .line 541
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->Y:Lcom/callapp/contacts/activity/contact/header/ThemeState;

    invoke-direct {p0, v0}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->setColorToActionButtons(Lcom/callapp/contacts/activity/contact/header/ThemeState;)V

    if-nez p1, :cond_2

    .line 542
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->isThemeDark()Z

    move-result p1

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->M:Z

    if-eqz p1, :cond_0

    goto/16 :goto_0

    .line 553
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->Y:Lcom/callapp/contacts/activity/contact/header/ThemeState;

    if-eqz p1, :cond_1

    .line 554
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/header/ThemeState;->getTitleMaximizedColor()I

    move-result p1

    invoke-static {p1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p1

    .line 555
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->Y:Lcom/callapp/contacts/activity/contact/header/ThemeState;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/header/ThemeState;->getTitleMinimizedColor()I

    move-result v0

    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    .line 556
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->Y:Lcom/callapp/contacts/activity/contact/header/ThemeState;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/contact/header/ThemeState;->getTitleDefaultOpenColor()I

    move-result v1

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    .line 557
    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->Y:Lcom/callapp/contacts/activity/contact/header/ThemeState;

    invoke-virtual {v2}, Lcom/callapp/contacts/activity/contact/header/ThemeState;->getSubtitleTextMaximizedColor()I

    move-result v2

    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    .line 558
    iget-object v3, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->Y:Lcom/callapp/contacts/activity/contact/header/ThemeState;

    invoke-virtual {v3}, Lcom/callapp/contacts/activity/contact/header/ThemeState;->getSubtitleTextDefaultColor()I

    move-result v3

    invoke-static {v3}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v3

    .line 559
    iget-object v4, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->Y:Lcom/callapp/contacts/activity/contact/header/ThemeState;

    invoke-virtual {v4}, Lcom/callapp/contacts/activity/contact/header/ThemeState;->getActionIconsMaximizedColor()I

    move-result v4

    invoke-static {v4}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v4

    .line 560
    iget-object v5, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->Y:Lcom/callapp/contacts/activity/contact/header/ThemeState;

    invoke-virtual {v5}, Lcom/callapp/contacts/activity/contact/header/ThemeState;->getActionIconsMinimizedColor()I

    move-result v5

    invoke-static {v5}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v5

    .line 561
    iget-object v6, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->Y:Lcom/callapp/contacts/activity/contact/header/ThemeState;

    invoke-virtual {v6}, Lcom/callapp/contacts/activity/contact/header/ThemeState;->getNoteIconColor()I

    move-result v6

    invoke-static {v6}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v6

    .line 562
    iget-object v7, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->Y:Lcom/callapp/contacts/activity/contact/header/ThemeState;

    invoke-virtual {v7}, Lcom/callapp/contacts/activity/contact/header/ThemeState;->getVideoRingtoneIconColor()I

    move-result v7

    invoke-static {v7}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v7

    const v8, 0x7f060244

    .line 564
    invoke-static {v8}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v8

    .line 565
    new-instance v9, Lcom/callapp/contacts/activity/contact/details/ColorTransitionCalculator;

    invoke-direct {v9, v8, p1}, Lcom/callapp/contacts/activity/contact/details/ColorTransitionCalculator;-><init>(II)V

    iput-object v9, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->A:Lcom/callapp/contacts/activity/contact/details/ColorTransitionCalculator;

    .line 566
    new-instance v8, Lcom/callapp/contacts/activity/contact/details/ColorTransitionCalculator;

    invoke-direct {v8, v0, v1}, Lcom/callapp/contacts/activity/contact/details/ColorTransitionCalculator;-><init>(II)V

    iput-object v8, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->y:Lcom/callapp/contacts/activity/contact/details/ColorTransitionCalculator;

    .line 567
    new-instance v0, Lcom/callapp/contacts/activity/contact/details/ColorTransitionCalculator;

    invoke-direct {v0, v1, p1}, Lcom/callapp/contacts/activity/contact/details/ColorTransitionCalculator;-><init>(II)V

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->z:Lcom/callapp/contacts/activity/contact/details/ColorTransitionCalculator;

    .line 568
    new-instance p1, Lcom/callapp/contacts/activity/contact/details/ColorTransitionCalculator;

    invoke-direct {p1, v3, v3}, Lcom/callapp/contacts/activity/contact/details/ColorTransitionCalculator;-><init>(II)V

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->B:Lcom/callapp/contacts/activity/contact/details/ColorTransitionCalculator;

    .line 569
    new-instance p1, Lcom/callapp/contacts/activity/contact/details/ColorTransitionCalculator;

    invoke-direct {p1, v5, v4}, Lcom/callapp/contacts/activity/contact/details/ColorTransitionCalculator;-><init>(II)V

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->D:Lcom/callapp/contacts/activity/contact/details/ColorTransitionCalculator;

    .line 570
    new-instance p1, Lcom/callapp/contacts/activity/contact/details/ColorTransitionCalculator;

    invoke-direct {p1, v6, v4}, Lcom/callapp/contacts/activity/contact/details/ColorTransitionCalculator;-><init>(II)V

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->E:Lcom/callapp/contacts/activity/contact/details/ColorTransitionCalculator;

    .line 571
    new-instance p1, Lcom/callapp/contacts/activity/contact/details/ColorTransitionCalculator;

    invoke-direct {p1, v7, v4}, Lcom/callapp/contacts/activity/contact/details/ColorTransitionCalculator;-><init>(II)V

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->F:Lcom/callapp/contacts/activity/contact/details/ColorTransitionCalculator;

    .line 572
    new-instance p1, Lcom/callapp/contacts/activity/contact/details/ColorTransitionCalculator;

    invoke-direct {p1, v3, v2}, Lcom/callapp/contacts/activity/contact/details/ColorTransitionCalculator;-><init>(II)V

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->C:Lcom/callapp/contacts/activity/contact/details/ColorTransitionCalculator;

    :cond_1
    return-void

    .line 543
    :cond_2
    :goto_0
    new-instance p1, Lcom/callapp/contacts/activity/contact/details/ColorTransitionCalculator;

    const/4 v0, -0x1

    invoke-direct {p1, v0, v0}, Lcom/callapp/contacts/activity/contact/details/ColorTransitionCalculator;-><init>(II)V

    .line 544
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->A:Lcom/callapp/contacts/activity/contact/details/ColorTransitionCalculator;

    .line 545
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->y:Lcom/callapp/contacts/activity/contact/details/ColorTransitionCalculator;

    .line 546
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->z:Lcom/callapp/contacts/activity/contact/details/ColorTransitionCalculator;

    .line 547
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->B:Lcom/callapp/contacts/activity/contact/details/ColorTransitionCalculator;

    .line 548
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->C:Lcom/callapp/contacts/activity/contact/details/ColorTransitionCalculator;

    .line 549
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->D:Lcom/callapp/contacts/activity/contact/details/ColorTransitionCalculator;

    .line 550
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->E:Lcom/callapp/contacts/activity/contact/details/ColorTransitionCalculator;

    .line 551
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->F:Lcom/callapp/contacts/activity/contact/details/ColorTransitionCalculator;

    return-void
.end method

.method public final b()V
    .locals 3

    .line 587
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->al:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;

    if-eqz v0, :cond_0

    .line 588
    sget v1, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->ac:I

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;->a(FF)V

    :cond_0
    return-void
.end method

.method public final b(Z)V
    .locals 2

    .line 603
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$2;

    invoke-direct {v1, p0, p1}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$2;-><init>(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;Z)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getAppBarHeightOnScreen()I
    .locals 2

    .line 479
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->G:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v0}, Lcom/google/android/material/appbar/AppBarLayout;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->G:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v1}, Lcom/google/android/material/appbar/AppBarLayout;->getY()F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getClosestPosition()Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;
    .locals 1

    .line 487
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->getAppBarHeightOnScreen()I

    move-result v0

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;->access$3600(I)Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getCoordinatorObserver()Lcom/callapp/contacts/activity/contact/details/AppBarCollapseObserver$CoordinatorLayoutObserver;
.end method

.method public getFullImageContainer()Landroid/widget/FrameLayout;
    .locals 1

    .line 594
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->L:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getPreviewLayout()Landroid/widget/LinearLayout;
    .locals 1

    .line 702
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->l:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getShadowView()Landroid/view/View;
    .locals 1

    .line 598
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->K:Landroid/view/View;

    return-object v0
.end method

.method public getThemeChangeViewController()Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->h:Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;

    return-object v0
.end method

.method public getUserDefinition()Landroid/widget/TextView;
    .locals 1

    .line 706
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->q:Landroid/widget/TextView;

    return-object v0
.end method

.method public isAppBarFullyClosed()Z
    .locals 2

    .line 475
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->getAppBarHeightOnScreen()I

    move-result v0

    sget v1, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->t:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isPositionAboveSemiOpen()Z
    .locals 1

    .line 483
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->getAppBarHeightOnScreen()I

    move-result v0

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;->access$3500(I)Z

    move-result v0

    return v0
.end method

.method isThemeDark()Z
    .locals 1

    .line 534
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->h:Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;

    if-eqz v0, :cond_0

    .line 535
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;->isThemeDark()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setHasCover(Z)V
    .locals 1

    .line 634
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->x:Z

    if-eq v0, p1, :cond_0

    .line 635
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->x:Z

    .line 636
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->i()V

    :cond_0
    return-void
.end method

.method public setIncomingCallScreen(Z)V
    .locals 0

    .line 167
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->aj:Z

    return-void
.end method

.method public setShouldHideSocialProfileAction(Z)V
    .locals 1

    .line 677
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->O:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 678
    :cond_0
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->O:Z

    .line 679
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->i()V

    return-void
.end method

.method public setSpammer(Z)V
    .locals 1

    .line 627
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->M:Z

    if-eq v0, p1, :cond_0

    .line 628
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->M:Z

    .line 629
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->i()V

    :cond_0
    return-void
.end method

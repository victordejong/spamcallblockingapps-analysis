.class public Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public A:I

.field public B:I

.field public C:Z

.field public D:Z

.field public E:I

.field public F:I

.field public G:I

.field public H:Z

.field public I:I

.field private J:I

.field private K:Landroid/graphics/drawable/Drawable;

.field private L:Lcom/callapp/contacts/widget/ProfilePictureView;

.field private M:Landroid/graphics/drawable/Drawable;

.field private N:Landroid/graphics/drawable/Drawable;

.field public a:Landroid/graphics/drawable/Drawable;

.field public b:Landroid/view/View$OnClickListener;

.field public c:Landroid/view/View$OnLongClickListener;

.field public d:Ljava/lang/String;

.field public e:I

.field public f:I

.field public g:Ljava/lang/String;

.field public h:I

.field public i:I

.field public j:I

.field public k:Landroid/view/View$OnClickListener;

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:I

.field public q:I

.field public r:Ljava/lang/String;

.field public s:Ljava/lang/String;

.field public t:Landroid/view/View$OnClickListener;

.field public u:Landroid/view/View$OnClickListener;

.field public v:Landroid/view/View$OnClickListener;

.field public w:I

.field public x:Ljava/lang/Integer;

.field public y:I

.field public z:Landroid/graphics/PorterDuff$Mode;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    .line 284
    iput v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->J:I

    const v0, 0x7f1300f7

    .line 289
    iput v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->e:I

    const v0, 0x7f0601ec

    .line 290
    iput v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->f:I

    .line 291
    new-instance v0, Lcom/callapp/contacts/widget/ProfilePictureView;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/callapp/contacts/widget/ProfilePictureView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->L:Lcom/callapp/contacts/widget/ProfilePictureView;

    const v0, 0x7f130119

    .line 294
    iput v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->h:I

    const v0, 0x7f0601cc

    .line 295
    iput v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->i:I

    const/4 v0, 0x0

    .line 313
    iput v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->w:I

    .line 317
    iput v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->A:I

    const/16 v1, 0x8

    .line 318
    iput v1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->B:I

    .line 319
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->C:Z

    .line 320
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->D:Z

    .line 321
    iput v1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->E:I

    .line 322
    iput v1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->F:I

    .line 326
    iput v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->I:I

    return-void
.end method

.method static synthetic A(Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;)I
    .locals 0

    .line 280
    iget p0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->w:I

    return p0
.end method

.method static synthetic B(Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;)Ljava/lang/Integer;
    .locals 0

    .line 280
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->x:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic C(Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;)I
    .locals 0

    .line 280
    iget p0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->y:I

    return p0
.end method

.method static synthetic D(Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;)Landroid/graphics/PorterDuff$Mode;
    .locals 0

    .line 280
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->z:Landroid/graphics/PorterDuff$Mode;

    return-object p0
.end method

.method static synthetic E(Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;)I
    .locals 0

    .line 280
    iget p0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->F:I

    return p0
.end method

.method static synthetic F(Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;)I
    .locals 0

    .line 280
    iget p0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->A:I

    return p0
.end method

.method static synthetic G(Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;)I
    .locals 0

    .line 280
    iget p0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->B:I

    return p0
.end method

.method static synthetic H(Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;)Z
    .locals 0

    .line 280
    iget-boolean p0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->C:Z

    return p0
.end method

.method static synthetic I(Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;)I
    .locals 0

    .line 280
    iget p0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->E:I

    return p0
.end method

.method static synthetic J(Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;)I
    .locals 0

    .line 280
    iget p0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->J:I

    return p0
.end method

.method static synthetic K(Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;)I
    .locals 0

    .line 280
    iget p0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->G:I

    return p0
.end method

.method static synthetic L(Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 280
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->N:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic M(Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;)Z
    .locals 0

    .line 280
    iget-boolean p0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->H:Z

    return p0
.end method

.method static synthetic N(Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;)I
    .locals 0

    .line 280
    iget p0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->I:I

    return p0
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 280
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->b:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method static synthetic b(Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;)Landroid/view/View$OnLongClickListener;
    .locals 0

    .line 280
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->c:Landroid/view/View$OnLongClickListener;

    return-object p0
.end method

.method static synthetic c(Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;)Ljava/lang/String;
    .locals 0

    .line 280
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;)Ljava/lang/String;
    .locals 0

    .line 280
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->g:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 280
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->M:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic f(Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;)I
    .locals 0

    .line 280
    iget p0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->j:I

    return p0
.end method

.method static synthetic g(Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 280
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->k:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method static synthetic h(Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;)I
    .locals 0

    .line 280
    iget p0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->l:I

    return p0
.end method

.method static synthetic i(Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;)I
    .locals 0

    .line 280
    iget p0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->m:I

    return p0
.end method

.method static synthetic j(Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;)I
    .locals 0

    .line 280
    iget p0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->n:I

    return p0
.end method

.method static synthetic k(Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;)I
    .locals 0

    .line 280
    iget p0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->o:I

    return p0
.end method

.method static synthetic l(Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;)I
    .locals 0

    .line 280
    iget p0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->p:I

    return p0
.end method

.method static synthetic m(Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;)I
    .locals 0

    .line 280
    iget p0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->q:I

    return p0
.end method

.method static synthetic n(Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;)Z
    .locals 0

    .line 280
    iget-boolean p0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->D:Z

    return p0
.end method

.method static synthetic o(Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;)Ljava/lang/String;
    .locals 0

    .line 280
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->r:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic p(Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;)Ljava/lang/String;
    .locals 0

    .line 280
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->s:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic q(Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 280
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->t:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method static synthetic r(Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 280
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->u:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method static synthetic s(Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 280
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->v:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method static synthetic t(Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 280
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->a:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic u(Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;)I
    .locals 0

    .line 280
    iget p0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->e:I

    return p0
.end method

.method static synthetic v(Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;)Lcom/callapp/contacts/widget/ProfilePictureView;
    .locals 0

    .line 280
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->L:Lcom/callapp/contacts/widget/ProfilePictureView;

    return-object p0
.end method

.method static synthetic w(Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;)I
    .locals 0

    .line 280
    iget p0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->f:I

    return p0
.end method

.method static synthetic x(Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;)I
    .locals 0

    .line 280
    iget p0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->h:I

    return p0
.end method

.method static synthetic y(Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;)I
    .locals 0

    .line 280
    iget p0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->i:I

    return p0
.end method

.method static synthetic z(Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 280
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->K:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method


# virtual methods
.method public final a(I)Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;
    .locals 1

    .line 387
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/b;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->M:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public final a(Lit/gmariotti/cardslib/library/a/b;)Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;
    .locals 1

    .line 329
    new-instance v0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;

    invoke-direct {v0, p1, p0}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;-><init>(Lit/gmariotti/cardslib/library/a/b;Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;)V

    return-object v0
.end method

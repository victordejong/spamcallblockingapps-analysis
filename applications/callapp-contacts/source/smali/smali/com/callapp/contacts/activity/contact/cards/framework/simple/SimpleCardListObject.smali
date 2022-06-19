.class public Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;
.super Lcom/callapp/contacts/activity/contact/cards/framework/DefaultListObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;
    }
.end annotation


# instance fields
.field private final A:I

.field private final B:Landroid/view/View$OnClickListener;

.field private final C:I

.field private final D:I

.field private final E:I

.field private final F:Z

.field private final G:Landroid/view/View$OnClickListener;

.field private final H:Landroid/graphics/drawable/Drawable;

.field private final I:Landroid/view/View$OnClickListener;

.field private final J:I

.field private final K:Ljava/lang/String;

.field private final L:Ljava/lang/String;

.field private final M:I

.field private final N:Landroid/view/View$OnClickListener;

.field private final O:I

.field private final P:I

.field private final Q:Z

.field private final R:I

.field private S:Landroid/graphics/drawable/Drawable;

.field private final a:Landroid/graphics/drawable/Drawable;

.field private final g:I

.field private final h:Landroid/graphics/drawable/Drawable;

.field private final i:Landroid/view/View$OnClickListener;

.field private final j:Landroid/view/View$OnLongClickListener;

.field private final k:Ljava/lang/String;

.field private final l:Lcom/callapp/contacts/widget/ProfilePictureView;

.field private final m:I

.field private final n:I

.field private final o:I

.field private final p:Ljava/lang/String;

.field private final q:I

.field private final r:I

.field private s:I

.field private final t:I

.field private final u:Ljava/lang/Integer;

.field private final v:I

.field private final w:Landroid/graphics/PorterDuff$Mode;

.field private final x:I

.field private final y:I

.field private final z:Z


# direct methods
.method protected constructor <init>(Lit/gmariotti/cardslib/library/a/b;Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;)V
    .locals 0

    .line 190
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/framework/DefaultListObject;-><init>(Lit/gmariotti/cardslib/library/a/b;)V

    .line 191
    invoke-static {p2}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->a(Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;)Landroid/view/View$OnClickListener;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->i:Landroid/view/View$OnClickListener;

    .line 192
    invoke-static {p2}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->b(Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;)Landroid/view/View$OnLongClickListener;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->j:Landroid/view/View$OnLongClickListener;

    .line 193
    invoke-static {p2}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->c(Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->k:Ljava/lang/String;

    .line 194
    invoke-static {p2}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->d(Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->p:Ljava/lang/String;

    .line 195
    invoke-static {p2}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->e(Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->S:Landroid/graphics/drawable/Drawable;

    .line 196
    invoke-static {p2}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->f(Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;)I

    move-result p1

    iput p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->s:I

    .line 197
    invoke-static {p2}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->g(Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;)Landroid/view/View$OnClickListener;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->I:Landroid/view/View$OnClickListener;

    .line 198
    invoke-static {p2}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->h(Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;)I

    move-result p1

    iput p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->J:I

    .line 199
    invoke-static {p2}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->i(Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;)I

    move-result p1

    iput p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->x:I

    .line 200
    invoke-static {p2}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->j(Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;)I

    move-result p1

    iput p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->C:I

    .line 202
    invoke-static {p2}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->k(Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;)I

    move-result p1

    iput p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->M:I

    .line 203
    invoke-static {p2}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->l(Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;)I

    move-result p1

    iput p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->A:I

    .line 204
    invoke-static {p2}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->m(Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;)I

    move-result p1

    iput p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->E:I

    .line 205
    invoke-static {p2}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->n(Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->F:Z

    .line 207
    invoke-static {p2}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->o(Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->K:Ljava/lang/String;

    .line 208
    invoke-static {p2}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->p(Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->L:Ljava/lang/String;

    .line 210
    invoke-static {p2}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->q(Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;)Landroid/view/View$OnClickListener;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->N:Landroid/view/View$OnClickListener;

    .line 211
    invoke-static {p2}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->r(Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;)Landroid/view/View$OnClickListener;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->B:Landroid/view/View$OnClickListener;

    .line 212
    invoke-static {p2}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->s(Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;)Landroid/view/View$OnClickListener;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->G:Landroid/view/View$OnClickListener;

    .line 213
    invoke-static {p2}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->t(Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->a:Landroid/graphics/drawable/Drawable;

    .line 214
    invoke-static {p2}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->u(Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;)I

    move-result p1

    iput p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->n:I

    .line 215
    invoke-static {p2}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->v(Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;)Lcom/callapp/contacts/widget/ProfilePictureView;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->l:Lcom/callapp/contacts/widget/ProfilePictureView;

    .line 216
    invoke-static {p2}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->w(Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;)I

    move-result p1

    iput p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->o:I

    .line 217
    invoke-static {p2}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->x(Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;)I

    move-result p1

    iput p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->q:I

    .line 218
    invoke-static {p2}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->y(Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;)I

    move-result p1

    iput p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->r:I

    .line 219
    invoke-static {p2}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->z(Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->h:Landroid/graphics/drawable/Drawable;

    .line 220
    invoke-static {p2}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->A(Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;)I

    move-result p1

    iput p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->t:I

    .line 221
    invoke-static {p2}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->B(Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->u:Ljava/lang/Integer;

    .line 222
    invoke-static {p2}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->C(Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;)I

    move-result p1

    iput p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->v:I

    .line 223
    invoke-static {p2}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->D(Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->w:Landroid/graphics/PorterDuff$Mode;

    .line 224
    invoke-static {p2}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->E(Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;)I

    move-result p1

    iput p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->m:I

    .line 225
    invoke-static {p2}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->F(Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;)I

    move-result p1

    iput p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->O:I

    .line 226
    invoke-static {p2}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->G(Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;)I

    move-result p1

    iput p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->y:I

    .line 227
    invoke-static {p2}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->H(Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->z:Z

    .line 228
    invoke-static {p2}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->I(Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;)I

    move-result p1

    iput p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->D:I

    .line 229
    invoke-static {p2}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->J(Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;)I

    move-result p1

    iput p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->g:I

    .line 230
    invoke-static {p2}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->K(Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;)I

    move-result p1

    iput p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->P:I

    .line 231
    invoke-static {p2}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->L(Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->H:Landroid/graphics/drawable/Drawable;

    .line 232
    invoke-static {p2}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->M(Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->Q:Z

    .line 233
    invoke-static {p2}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;->N(Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject$Builder;)I

    move-result p1

    iput p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->R:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_f

    .line 551
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 553
    :cond_1
    check-cast p1, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;

    .line 555
    iget v2, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->g:I

    iget v3, p1, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->g:I

    if-eq v2, v3, :cond_2

    return v1

    .line 556
    :cond_2
    iget v2, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->n:I

    iget v3, p1, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->n:I

    if-eq v2, v3, :cond_3

    return v1

    .line 557
    :cond_3
    iget v2, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->q:I

    iget v3, p1, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->q:I

    if-eq v2, v3, :cond_4

    return v1

    .line 558
    :cond_4
    iget v2, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->s:I

    iget v3, p1, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->s:I

    if-eq v2, v3, :cond_5

    return v1

    .line 559
    :cond_5
    iget v2, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->J:I

    iget v3, p1, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->J:I

    if-eq v2, v3, :cond_6

    return v1

    .line 560
    :cond_6
    iget v2, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->M:I

    iget v3, p1, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->M:I

    if-eq v2, v3, :cond_7

    return v1

    .line 561
    :cond_7
    iget v2, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->t:I

    iget v3, p1, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->t:I

    if-eq v2, v3, :cond_8

    return v1

    .line 562
    :cond_8
    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->u:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->u:Ljava/lang/Integer;

    if-eq v2, v3, :cond_9

    return v1

    .line 563
    :cond_9
    iget v2, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->v:I

    iget v3, p1, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->v:I

    if-eq v2, v3, :cond_a

    return v1

    .line 564
    :cond_a
    iget v2, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->O:I

    iget v3, p1, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->O:I

    if-eq v2, v3, :cond_b

    return v1

    .line 565
    :cond_b
    iget v2, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->P:I

    iget v3, p1, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->P:I

    if-eq v2, v3, :cond_c

    return v1

    .line 574
    :cond_c
    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->k:Ljava/lang/String;

    iget-object v3, p1, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->k:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    return v1

    .line 576
    :cond_d
    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->p:Ljava/lang/String;

    iget-object p1, p1, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->p:Ljava/lang/String;

    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    return v1

    :cond_e
    return v0

    :cond_f
    :goto_0
    return v1
.end method

.method public getBackgroundColor()Ljava/lang/Integer;
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->u:Ljava/lang/Integer;

    return-object v0
.end method

.method public getBackgroundDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->a:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getCardContentGravity()I
    .locals 1

    .line 162
    iget v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->g:I

    return v0
.end method

.method public getColorFilter()I
    .locals 1

    .line 245
    iget v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->v:I

    return v0
.end method

.method public getColorFilterMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 249
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->w:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public getEndIconClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->G:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public getEndIconIsEnable()Z
    .locals 1

    .line 93
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->F:Z

    return v0
.end method

.method public getEndIconResId()I
    .locals 1

    .line 73
    iget v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->C:I

    return v0
.end method

.method public getEndIconTintColor()I
    .locals 1

    .line 146
    iget v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->E:I

    return v0
.end method

.method public getEndIconVisibility()I
    .locals 1

    .line 89
    iget v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->D:I

    return v0
.end method

.method public getFirstItemSubTitleColor()I
    .locals 1

    .line 110
    iget v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->r:I

    return v0
.end method

.method public getFirstItemSubTitleStyle()I
    .locals 1

    .line 102
    iget v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->q:I

    return v0
.end method

.method public getFirstItemTitleColor()I
    .locals 1

    .line 106
    iget v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->o:I

    return v0
.end method

.method public getFirstItemTitleStyle()I
    .locals 1

    .line 98
    iget v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->n:I

    return v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getLeftIconClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->I:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public getLeftIconDefaultDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->H:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getLeftIconDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->S:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getLeftIconTintColor()I
    .locals 1

    .line 126
    iget v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->s:I

    return v0
.end method

.method public getLeftIconVisibility()I
    .locals 1

    .line 237
    iget v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->t:I

    return v0
.end method

.method public getLoadedImageUrl()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMiddleIconClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->B:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public getMiddleIconEnabled()Z
    .locals 1

    .line 85
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->z:Z

    return v0
.end method

.method public getMiddleIconResId()I
    .locals 1

    .line 69
    iget v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->x:I

    return v0
.end method

.method public getMiddleIconTintColor()I
    .locals 1

    .line 142
    iget v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->A:I

    return v0
.end method

.method public getMiddleIconVisibility()I
    .locals 1

    .line 81
    iget v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->y:I

    return v0
.end method

.method public getProfilePicturePhotoAndName()Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 150
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->K:Ljava/lang/String;

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->L:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public getProfilePictureViewVisibility()I
    .locals 1

    .line 253
    iget v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->m:I

    return v0
.end method

.method public getRightIconClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->N:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public getRightIconResId()I
    .locals 1

    .line 134
    iget v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->J:I

    return v0
.end method

.method public getRightIconTintColor()I
    .locals 1

    .line 138
    iget v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->M:I

    return v0
.end method

.method public getRightIconVisibility()I
    .locals 1

    .line 257
    iget v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->O:I

    return v0
.end method

.method public getRowClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->i:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public getRowLongClickListener()Landroid/view/View$OnLongClickListener;
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->j:Landroid/view/View$OnLongClickListener;

    return-object v0
.end method

.method public getSubTextIconResId()I
    .locals 1

    .line 261
    iget v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->P:I

    return v0
.end method

.method public getSubtitle()Ljava/lang/String;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->p:Ljava/lang/String;

    return-object v0
.end method

.method public getTextBackgroundDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->h:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->k:Ljava/lang/String;

    return-object v0
.end method

.method public getViewHeight()I
    .locals 1

    .line 277
    iget v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->R:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 591
    iget v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->g:I

    mul-int/lit8 v0, v0, 0x1f

    .line 595
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->k:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 596
    iget v1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->n:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 597
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->p:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 598
    iget v1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->q:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 600
    iget v1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->s:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 602
    iget v1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->J:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 603
    iget v1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->M:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 605
    iget v1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->t:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 606
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->u:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 609
    iget v1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->O:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 610
    iget v1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->P:I

    add-int/2addr v0, v1

    return v0
.end method

.method public isTitleAllCaps()Z
    .locals 1

    .line 273
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->Q:Z

    return v0
.end method

.method public setLeftIconDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 265
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->S:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setLeftImage(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 269
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;->setLeftIconDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setLoadedImageUrl(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

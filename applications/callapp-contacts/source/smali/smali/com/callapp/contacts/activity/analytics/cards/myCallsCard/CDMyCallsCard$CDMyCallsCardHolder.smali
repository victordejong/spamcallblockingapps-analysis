.class Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CDMyCallsCardHolder"
.end annotation


# instance fields
.field A:Landroid/widget/TextView;

.field B:Landroid/widget/TextView;

.field C:Landroid/widget/TextView;

.field D:Landroid/widget/TextView;

.field E:Landroid/widget/LinearLayout;

.field F:Landroid/widget/FrameLayout;

.field G:Landroid/widget/TextView;

.field H:Landroid/widget/TextView;

.field I:Lcom/akexorcist/roundcornerprogressbar/RoundCornerProgressBar;

.field J:Landroid/widget/TextView;

.field K:Landroid/widget/TextView;

.field L:Lcom/akexorcist/roundcornerprogressbar/RoundCornerProgressBar;

.field M:Landroid/widget/TextView;

.field N:Landroid/widget/TextView;

.field O:Lcom/akexorcist/roundcornerprogressbar/RoundCornerProgressBar;

.field P:Landroid/widget/TextView;

.field final synthetic Q:Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard;

.field private R:Landroid/widget/ImageView;

.field private S:Landroid/widget/LinearLayout;

.field private T:Landroid/widget/ImageView;

.field private U:Landroid/widget/LinearLayout;

.field private V:Landroid/widget/LinearLayout;

.field private W:Landroid/widget/TextView;

.field a:Landroid/widget/LinearLayout;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/TextView;

.field d:Landroid/widget/TextView;

.field e:Landroid/widget/TextView;

.field f:Landroid/widget/TextView;

.field g:Landroid/widget/TextView;

.field h:Landroid/widget/TextView;

.field i:Landroid/widget/TextView;

.field j:Landroid/widget/TextView;

.field k:Landroid/widget/LinearLayout;

.field l:Landroid/widget/TextView;

.field m:Landroid/widget/TextView;

.field n:Landroid/widget/TextView;

.field o:Landroid/widget/TextView;

.field p:Landroid/widget/TextView;

.field q:Landroid/widget/TextView;

.field r:Landroid/widget/TextView;

.field s:Landroid/widget/TextView;

.field t:Landroid/widget/TextView;

.field u:Landroid/widget/LinearLayout;

.field v:Landroid/widget/TextView;

.field w:Landroid/widget/TextView;

.field x:Landroid/widget/TextView;

.field y:Landroid/widget/TextView;

.field z:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard;Landroid/view/View;)V
    .locals 8

    .line 346
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->Q:Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const p1, 0x7f0a0779

    .line 347
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->a:Landroid/widget/LinearLayout;

    const p2, 0x7f0a05a1

    .line 348
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->W:Landroid/widget/TextView;

    .line 349
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->a:Landroid/widget/LinearLayout;

    const p2, 0x7f0a0967

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->b:Landroid/widget/TextView;

    .line 350
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->a:Landroid/widget/LinearLayout;

    const p2, 0x7f0a0960

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->k:Landroid/widget/LinearLayout;

    const p2, 0x7f0a035b

    .line 351
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->c:Landroid/widget/TextView;

    .line 352
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->k:Landroid/widget/LinearLayout;

    const v0, 0x7f0a035a

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->d:Landroid/widget/TextView;

    .line 353
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->k:Landroid/widget/LinearLayout;

    const v1, 0x7f0a035d

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->e:Landroid/widget/TextView;

    .line 354
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->k:Landroid/widget/LinearLayout;

    const v2, 0x7f0a035c

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->f:Landroid/widget/TextView;

    .line 355
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->k:Landroid/widget/LinearLayout;

    const v3, 0x7f0a0360

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->g:Landroid/widget/TextView;

    .line 356
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->k:Landroid/widget/LinearLayout;

    const v4, 0x7f0a035f

    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->h:Landroid/widget/TextView;

    .line 357
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->k:Landroid/widget/LinearLayout;

    const v5, 0x7f0a0362

    invoke-virtual {p1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->i:Landroid/widget/TextView;

    .line 358
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->k:Landroid/widget/LinearLayout;

    const v6, 0x7f0a0361

    invoke-virtual {p1, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->j:Landroid/widget/TextView;

    .line 360
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->a:Landroid/widget/LinearLayout;

    const v7, 0x7f0a0509

    invoke-virtual {p1, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->l:Landroid/widget/TextView;

    .line 361
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->a:Landroid/widget/LinearLayout;

    const v7, 0x7f0a0502

    invoke-virtual {p1, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->u:Landroid/widget/LinearLayout;

    .line 362
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->m:Landroid/widget/TextView;

    .line 363
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->u:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->n:Landroid/widget/TextView;

    .line 364
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->u:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->o:Landroid/widget/TextView;

    .line 365
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->u:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->p:Landroid/widget/TextView;

    .line 366
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->u:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->q:Landroid/widget/TextView;

    .line 367
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->u:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->r:Landroid/widget/TextView;

    .line 368
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->u:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->s:Landroid/widget/TextView;

    .line 369
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->u:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->t:Landroid/widget/TextView;

    .line 371
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->a:Landroid/widget/LinearLayout;

    const v7, 0x7f0a0670

    invoke-virtual {p1, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->v:Landroid/widget/TextView;

    .line 372
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->a:Landroid/widget/LinearLayout;

    const v7, 0x7f0a0668

    invoke-virtual {p1, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->E:Landroid/widget/LinearLayout;

    .line 373
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->w:Landroid/widget/TextView;

    .line 374
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->E:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->x:Landroid/widget/TextView;

    .line 375
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->E:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->y:Landroid/widget/TextView;

    .line 376
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->E:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->z:Landroid/widget/TextView;

    .line 377
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->E:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->A:Landroid/widget/TextView;

    .line 378
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->E:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->B:Landroid/widget/TextView;

    .line 379
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->E:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->C:Landroid/widget/TextView;

    .line 380
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->E:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->D:Landroid/widget/TextView;

    .line 381
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->a:Landroid/widget/LinearLayout;

    const p2, 0x7f0a066b

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->R:Landroid/widget/ImageView;

    .line 383
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->a:Landroid/widget/LinearLayout;

    const p2, 0x7f0a014c

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->F:Landroid/widget/FrameLayout;

    .line 384
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->a:Landroid/widget/LinearLayout;

    const p2, 0x7f0a0644

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->G:Landroid/widget/TextView;

    .line 386
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->a:Landroid/widget/LinearLayout;

    const p2, 0x7f0a0965

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->H:Landroid/widget/TextView;

    .line 387
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->a:Landroid/widget/LinearLayout;

    const p2, 0x7f0a0966

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/akexorcist/roundcornerprogressbar/RoundCornerProgressBar;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->I:Lcom/akexorcist/roundcornerprogressbar/RoundCornerProgressBar;

    .line 388
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->a:Landroid/widget/LinearLayout;

    const p2, 0x7f0a0964

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->J:Landroid/widget/TextView;

    .line 390
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->a:Landroid/widget/LinearLayout;

    const p2, 0x7f0a0507

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->K:Landroid/widget/TextView;

    .line 391
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->a:Landroid/widget/LinearLayout;

    const p2, 0x7f0a0508

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/akexorcist/roundcornerprogressbar/RoundCornerProgressBar;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->L:Lcom/akexorcist/roundcornerprogressbar/RoundCornerProgressBar;

    .line 392
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->a:Landroid/widget/LinearLayout;

    const p2, 0x7f0a0506

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->M:Landroid/widget/TextView;

    .line 394
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->a:Landroid/widget/LinearLayout;

    const p2, 0x7f0a066e

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->N:Landroid/widget/TextView;

    .line 395
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->a:Landroid/widget/LinearLayout;

    const p2, 0x7f0a066f

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/akexorcist/roundcornerprogressbar/RoundCornerProgressBar;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->O:Lcom/akexorcist/roundcornerprogressbar/RoundCornerProgressBar;

    .line 396
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->a:Landroid/widget/LinearLayout;

    const p2, 0x7f0a066d

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->P:Landroid/widget/TextView;

    .line 398
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->a:Landroid/widget/LinearLayout;

    const p2, 0x7f0a094e

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->S:Landroid/widget/LinearLayout;

    .line 399
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->a:Landroid/widget/LinearLayout;

    const p2, 0x7f0a094f

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->T:Landroid/widget/ImageView;

    .line 400
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->a:Landroid/widget/LinearLayout;

    const p2, 0x7f0a014d

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->U:Landroid/widget/LinearLayout;

    .line 401
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->a:Landroid/widget/LinearLayout;

    const p2, 0x7f0a014a

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->V:Landroid/widget/LinearLayout;

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;)Landroid/widget/LinearLayout;
    .locals 0

    .line 285
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->S:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic b(Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;)Landroid/widget/LinearLayout;
    .locals 0

    .line 285
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->V:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic c(Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;)Landroid/widget/ImageView;
    .locals 0

    .line 285
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->T:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic d(Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;)Landroid/widget/LinearLayout;
    .locals 0

    .line 285
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->U:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic e(Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;)Landroid/widget/TextView;
    .locals 0

    .line 285
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->W:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic f(Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;)Landroid/widget/ImageView;
    .locals 0

    .line 285
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/CDMyCallsCard$CDMyCallsCardHolder;->R:Landroid/widget/ImageView;

    return-object p0
.end method

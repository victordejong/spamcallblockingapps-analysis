.class public final Lcom/google/android/gms/internal/ads/pp;
.super Lcom/google/android/gms/internal/ads/qa;
.source "SourceFile"


# static fields
.field private static final t:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:Ljava/lang/String;

.field b:Z

.field c:I

.field d:I

.field e:I

.field f:I

.field g:I

.field h:I

.field final i:Ljava/lang/Object;

.field final j:Lcom/google/android/gms/internal/ads/adt;

.field final k:Landroid/app/Activity;

.field l:Lcom/google/android/gms/internal/ads/afh;

.field m:Landroid/widget/ImageView;

.field n:Landroid/widget/LinearLayout;

.field o:Lcom/google/android/gms/internal/ads/pz;

.field p:Landroid/widget/PopupWindow;

.field q:Landroid/widget/RelativeLayout;

.field r:Landroid/view/ViewGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-string v0, "top-left"

    const-string v1, "top-right"

    const-string v2, "top-center"

    const-string v3, "center"

    const-string v4, "bottom-left"

    const-string v5, "bottom-right"

    const-string v6, "bottom-center"

    .line 218
    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    .line 2001
    new-instance v1, Landroidx/b/b;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, Landroidx/b/b;-><init>(I)V

    .line 1024
    invoke-static {v1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 1025
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 219
    sput-object v0, Lcom/google/android/gms/internal/ads/pp;->t:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/adt;Lcom/google/android/gms/internal/ads/pz;)V
    .locals 2

    const-string v0, "resize"

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/qa;-><init>(Lcom/google/android/gms/internal/ads/adt;Ljava/lang/String;)V

    const-string v0, "top-right"

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/pp;->a:Ljava/lang/String;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/pp;->b:Z

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/google/android/gms/internal/ads/pp;->c:I

    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/ads/pp;->d:I

    const/4 v1, -0x1

    .line 6
    iput v1, p0, Lcom/google/android/gms/internal/ads/pp;->e:I

    .line 7
    iput v0, p0, Lcom/google/android/gms/internal/ads/pp;->f:I

    .line 8
    iput v0, p0, Lcom/google/android/gms/internal/ads/pp;->g:I

    .line 9
    iput v1, p0, Lcom/google/android/gms/internal/ads/pp;->h:I

    .line 10
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/pp;->i:Ljava/lang/Object;

    .line 11
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/pp;->j:Lcom/google/android/gms/internal/ads/adt;

    .line 12
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/adt;->d()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/pp;->k:Landroid/app/Activity;

    .line 13
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/pp;->o:Lcom/google/android/gms/internal/ads/pz;

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 3

    .line 190
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pp;->i:Ljava/lang/Object;

    monitor-enter v0

    .line 191
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/pp;->p:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_2

    .line 192
    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 193
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/pp;->q:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/pp;->j:Lcom/google/android/gms/internal/ads/adt;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/adt;->s()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 194
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/pp;->r:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 195
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/pp;->m:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 196
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/pp;->r:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/pp;->j:Lcom/google/android/gms/internal/ads/adt;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/adt;->s()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 197
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/pp;->j:Lcom/google/android/gms/internal/ads/adt;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/pp;->l:Lcom/google/android/gms/internal/ads/afh;

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/adt;->a(Lcom/google/android/gms/internal/ads/afh;)V

    :cond_0
    if-eqz p1, :cond_1

    const-string p1, "default"

    .line 199
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/qa;->c(Ljava/lang/String;)V

    .line 200
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/pp;->o:Lcom/google/android/gms/internal/ads/pz;

    if-eqz p1, :cond_1

    .line 201
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/pz;->b()V

    :cond_1
    const/4 p1, 0x0

    .line 202
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/pp;->p:Landroid/widget/PopupWindow;

    .line 203
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/pp;->q:Landroid/widget/RelativeLayout;

    .line 204
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/pp;->r:Landroid/view/ViewGroup;

    .line 205
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/pp;->n:Landroid/widget/LinearLayout;

    .line 206
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a()Z
    .locals 2

    .line 212
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pp;->i:Ljava/lang/Object;

    monitor-enter v0

    .line 213
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/pp;->p:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 214
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

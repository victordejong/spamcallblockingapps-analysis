.class public final Lcom/google/android/gms/internal/ads/cak;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cae;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/cae",
        "<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation

.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private final a:Z

.field private final b:Z

.field private final c:Ljava/lang/String;

.field private final d:Z

.field private final e:Z

.field private final f:Z

.field private final g:Ljava/lang/String;

.field private final h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Ljava/lang/String;

.field private final j:Ljava/lang/String;

.field private final k:Ljava/lang/String;

.field private final l:Z

.field private final m:Ljava/lang/String;

.field private final n:J


# direct methods
.method public constructor <init>(ZZLjava/lang/String;ZZZLjava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;J)V
    .locals 0
    .param p9    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p10    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/lang/String;",
            "ZZZ",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/cak;->a:Z

    .line 3
    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/cak;->b:Z

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/cak;->c:Ljava/lang/String;

    .line 5
    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/cak;->d:Z

    .line 6
    iput-boolean p5, p0, Lcom/google/android/gms/internal/ads/cak;->e:Z

    .line 7
    iput-boolean p6, p0, Lcom/google/android/gms/internal/ads/cak;->f:Z

    .line 8
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/cak;->g:Ljava/lang/String;

    .line 9
    iput-object p8, p0, Lcom/google/android/gms/internal/ads/cak;->h:Ljava/util/ArrayList;

    .line 10
    iput-object p9, p0, Lcom/google/android/gms/internal/ads/cak;->i:Ljava/lang/String;

    .line 11
    iput-object p10, p0, Lcom/google/android/gms/internal/ads/cak;->j:Ljava/lang/String;

    .line 12
    iput-object p11, p0, Lcom/google/android/gms/internal/ads/cak;->k:Ljava/lang/String;

    .line 13
    iput-boolean p12, p0, Lcom/google/android/gms/internal/ads/cak;->l:Z

    .line 14
    iput-object p13, p0, Lcom/google/android/gms/internal/ads/cak;->m:Ljava/lang/String;

    .line 15
    iput-wide p14, p0, Lcom/google/android/gms/internal/ads/cak;->n:J

    .line 16
    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 17
    check-cast p1, Landroid/os/Bundle;

    .line 18
    const-string/jumbo v0, "cog"

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/cak;->a:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 19
    const-string/jumbo v0, "coh"

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/cak;->b:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 20
    const-string/jumbo v0, "gl"

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cak;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    const-string/jumbo v0, "simulator"

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/cak;->d:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 22
    const-string/jumbo v0, "is_latchsky"

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/cak;->e:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 23
    const-string/jumbo v0, "is_sidewinder"

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/cak;->f:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 24
    const-string/jumbo v0, "hl"

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cak;->g:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cak;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 26
    const-string/jumbo v0, "hl_list"

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cak;->h:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 27
    :cond_0
    const-string/jumbo v0, "mv"

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cak;->i:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    const-string/jumbo v0, "submodel"

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cak;->m:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    const-string/jumbo v0, "device"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/chm;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 30
    const-string/jumbo v0, "device"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 31
    const-string/jumbo v0, "build"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/cak;->k:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->br:Lcom/google/android/gms/internal/ads/ect;

    .line 33
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 34
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 35
    const-string/jumbo v0, "remaining_data_partition_space"

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/cak;->n:J

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 36
    :cond_1
    const-string/jumbo v0, "browser"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/chm;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 37
    const-string/jumbo v2, "browser"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 38
    const-string/jumbo v2, "is_browser_custom_tabs_capable"

    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/cak;->l:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 39
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cak;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 40
    const-string/jumbo v0, "play_store"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/chm;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 41
    const-string/jumbo v2, "play_store"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 42
    const-string/jumbo v1, "package_version"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/cak;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    :cond_2
    return-void
.end method

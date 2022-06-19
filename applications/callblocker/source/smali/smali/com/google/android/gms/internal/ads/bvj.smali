.class public final Lcom/google/android/gms/internal/ads/bvj;
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


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/dyd;

.field private final b:Ljava/lang/String;

.field private final c:Z

.field private final d:Ljava/lang/String;

.field private final e:F

.field private final f:I

.field private final g:I

.field private final h:Ljava/lang/String;

.field private final i:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/dyd;Ljava/lang/String;ZLjava/lang/String;FIILjava/lang/String;Z)V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string/jumbo v0, "the adSize must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bvj;->a:Lcom/google/android/gms/internal/ads/dyd;

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bvj;->b:Ljava/lang/String;

    .line 5
    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/bvj;->c:Z

    .line 6
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/bvj;->d:Ljava/lang/String;

    .line 7
    iput p5, p0, Lcom/google/android/gms/internal/ads/bvj;->e:F

    .line 8
    iput p6, p0, Lcom/google/android/gms/internal/ads/bvj;->f:I

    .line 9
    iput p7, p0, Lcom/google/android/gms/internal/ads/bvj;->g:I

    .line 10
    iput-object p8, p0, Lcom/google/android/gms/internal/ads/bvj;->h:Ljava/lang/String;

    .line 11
    iput-boolean p9, p0, Lcom/google/android/gms/internal/ads/bvj;->i:Z

    .line 12
    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 13
    check-cast p1, Landroid/os/Bundle;

    .line 14
    const-string/jumbo v3, "smart_w"

    const-string/jumbo v4, "full"

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bvj;->a:Lcom/google/android/gms/internal/ads/dyd;

    iget v0, v0, Lcom/google/android/gms/internal/ads/dyd;->e:I

    const/4 v5, -0x1

    if-ne v0, v5, :cond_1

    move v0, v1

    :goto_0
    invoke-static {p1, v3, v4, v0}, Lcom/google/android/gms/internal/ads/chm;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 15
    const-string/jumbo v3, "smart_h"

    const-string/jumbo v4, "auto"

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bvj;->a:Lcom/google/android/gms/internal/ads/dyd;

    iget v0, v0, Lcom/google/android/gms/internal/ads/dyd;->b:I

    const/4 v5, -0x2

    if-ne v0, v5, :cond_2

    move v0, v1

    :goto_1
    invoke-static {p1, v3, v4, v0}, Lcom/google/android/gms/internal/ads/chm;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 16
    const-string/jumbo v0, "ene"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/bvj;->a:Lcom/google/android/gms/internal/ads/dyd;

    iget-boolean v4, v4, Lcom/google/android/gms/internal/ads/dyd;->j:Z

    invoke-static {p1, v0, v3, v4}, Lcom/google/android/gms/internal/ads/chm;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Boolean;Z)V

    .line 17
    const-string/jumbo v0, "rafmt"

    const-string/jumbo v3, "102"

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/bvj;->a:Lcom/google/android/gms/internal/ads/dyd;

    iget-boolean v4, v4, Lcom/google/android/gms/internal/ads/dyd;->l:Z

    invoke-static {p1, v0, v3, v4}, Lcom/google/android/gms/internal/ads/chm;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 18
    const-string/jumbo v0, "rafmt"

    const-string/jumbo v3, "103"

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/bvj;->a:Lcom/google/android/gms/internal/ads/dyd;

    iget-boolean v4, v4, Lcom/google/android/gms/internal/ads/dyd;->m:Z

    invoke-static {p1, v0, v3, v4}, Lcom/google/android/gms/internal/ads/chm;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 19
    const-string/jumbo v0, "inline_adaptive_slot"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-boolean v4, p0, Lcom/google/android/gms/internal/ads/bvj;->i:Z

    invoke-static {p1, v0, v3, v4}, Lcom/google/android/gms/internal/ads/chm;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Boolean;Z)V

    .line 20
    const-string/jumbo v0, "format"

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/bvj;->b:Ljava/lang/String;

    invoke-static {p1, v0, v3}, Lcom/google/android/gms/internal/ads/chm;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    const-string/jumbo v0, "fluid"

    const-string/jumbo v3, "height"

    iget-boolean v4, p0, Lcom/google/android/gms/internal/ads/bvj;->c:Z

    invoke-static {p1, v0, v3, v4}, Lcom/google/android/gms/internal/ads/chm;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 22
    const-string/jumbo v3, "sz"

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/bvj;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bvj;->d:Ljava/lang/String;

    .line 23
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    .line 24
    :goto_2
    invoke-static {p1, v3, v4, v0}, Lcom/google/android/gms/internal/ads/chm;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 25
    const-string/jumbo v0, "u_sd"

    iget v3, p0, Lcom/google/android/gms/internal/ads/bvj;->e:F

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 26
    const-string/jumbo v0, "sw"

    iget v3, p0, Lcom/google/android/gms/internal/ads/bvj;->f:I

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 27
    const-string/jumbo v0, "sh"

    iget v3, p0, Lcom/google/android/gms/internal/ads/bvj;->g:I

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 28
    const-string/jumbo v0, "sc"

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/bvj;->h:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/bvj;->h:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    :goto_3
    invoke-static {p1, v0, v3, v1}, Lcom/google/android/gms/internal/ads/chm;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 31
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bvj;->a:Lcom/google/android/gms/internal/ads/dyd;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/dyd;->g:[Lcom/google/android/gms/internal/ads/dyd;

    if-nez v1, :cond_5

    .line 32
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 33
    const-string/jumbo v2, "height"

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/bvj;->a:Lcom/google/android/gms/internal/ads/dyd;

    iget v3, v3, Lcom/google/android/gms/internal/ads/dyd;->b:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 34
    const-string/jumbo v2, "width"

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/bvj;->a:Lcom/google/android/gms/internal/ads/dyd;

    iget v3, v3, Lcom/google/android/gms/internal/ads/dyd;->e:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 35
    const-string/jumbo v2, "is_fluid_height"

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/bvj;->a:Lcom/google/android/gms/internal/ads/dyd;

    iget-boolean v3, v3, Lcom/google/android/gms/internal/ads/dyd;->i:Z

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 36
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    :cond_0
    const-string/jumbo v1, "valid_ad_sizes"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 46
    return-void

    :cond_1
    move v0, v2

    .line 14
    goto/16 :goto_0

    :cond_2
    move v0, v2

    .line 15
    goto/16 :goto_1

    :cond_3
    move v0, v2

    .line 23
    goto :goto_2

    :cond_4
    move v1, v2

    .line 28
    goto :goto_3

    .line 38
    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bvj;->a:Lcom/google/android/gms/internal/ads/dyd;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/dyd;->g:[Lcom/google/android/gms/internal/ads/dyd;

    array-length v3, v1

    :goto_4
    if-ge v2, v3, :cond_0

    aget-object v4, v1, v2

    .line 39
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 40
    const-string/jumbo v6, "is_fluid_height"

    iget-boolean v7, v4, Lcom/google/android/gms/internal/ads/dyd;->i:Z

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 41
    const-string/jumbo v6, "height"

    iget v7, v4, Lcom/google/android/gms/internal/ads/dyd;->b:I

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 42
    const-string/jumbo v6, "width"

    iget v4, v4, Lcom/google/android/gms/internal/ads/dyd;->e:I

    invoke-virtual {v5, v6, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 43
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    add-int/lit8 v2, v2, 0x1

    goto :goto_4
.end method

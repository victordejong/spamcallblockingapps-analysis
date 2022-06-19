.class public final Lcom/google/android/gms/internal/ads/cci;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cgy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/cgy<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzvt;

.field private final b:Ljava/lang/String;

.field private final c:Z

.field private final d:Ljava/lang/String;

.field private final e:F

.field private final f:I

.field private final g:I

.field private final h:Ljava/lang/String;

.field private final i:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzvt;Ljava/lang/String;ZLjava/lang/String;FIILjava/lang/String;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "the adSize must not be null"

    .line 2
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cci;->a:Lcom/google/android/gms/internal/ads/zzvt;

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/cci;->b:Ljava/lang/String;

    .line 5
    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/cci;->c:Z

    .line 6
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/cci;->d:Ljava/lang/String;

    .line 7
    iput p5, p0, Lcom/google/android/gms/internal/ads/cci;->e:F

    .line 8
    iput p6, p0, Lcom/google/android/gms/internal/ads/cci;->f:I

    .line 9
    iput p7, p0, Lcom/google/android/gms/internal/ads/cci;->g:I

    .line 10
    iput-object p8, p0, Lcom/google/android/gms/internal/ads/cci;->h:Ljava/lang/String;

    .line 11
    iput-boolean p9, p0, Lcom/google/android/gms/internal/ads/cci;->i:Z

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 10

    .line 13
    check-cast p1, Landroid/os/Bundle;

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cci;->a:Lcom/google/android/gms/internal/ads/zzvt;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzvt;->width:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, "smart_w"

    const-string v4, "full"

    invoke-static {p1, v3, v4, v0}, Lcom/google/android/gms/internal/ads/cpw;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cci;->a:Lcom/google/android/gms/internal/ads/zzvt;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzvt;->height:I

    const/4 v3, -0x2

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const-string v3, "smart_h"

    const-string v4, "auto"

    invoke-static {p1, v3, v4, v0}, Lcom/google/android/gms/internal/ads/cpw;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 16
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/cci;->a:Lcom/google/android/gms/internal/ads/zzvt;

    iget-boolean v3, v3, Lcom/google/android/gms/internal/ads/zzvt;->zzciu:Z

    const-string v4, "ene"

    invoke-static {p1, v4, v0, v3}, Lcom/google/android/gms/internal/ads/cpw;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Boolean;Z)V

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cci;->a:Lcom/google/android/gms/internal/ads/zzvt;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzvt;->zzcix:Z

    const-string v3, "rafmt"

    const-string v4, "102"

    invoke-static {p1, v3, v4, v0}, Lcom/google/android/gms/internal/ads/cpw;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cci;->a:Lcom/google/android/gms/internal/ads/zzvt;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzvt;->zzciy:Z

    const-string v4, "103"

    invoke-static {p1, v3, v4, v0}, Lcom/google/android/gms/internal/ads/cpw;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cci;->a:Lcom/google/android/gms/internal/ads/zzvt;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzvt;->zzadh:Z

    const-string v4, "105"

    invoke-static {p1, v3, v4, v0}, Lcom/google/android/gms/internal/ads/cpw;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 20
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/cci;->i:Z

    const-string v4, "inline_adaptive_slot"

    invoke-static {p1, v4, v0, v3}, Lcom/google/android/gms/internal/ads/cpw;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Boolean;Z)V

    .line 21
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/cci;->a:Lcom/google/android/gms/internal/ads/zzvt;

    iget-boolean v3, v3, Lcom/google/android/gms/internal/ads/zzvt;->zzadh:Z

    const-string v4, "interscroller_slot"

    invoke-static {p1, v4, v0, v3}, Lcom/google/android/gms/internal/ads/cpw;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Boolean;Z)V

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cci;->b:Ljava/lang/String;

    const-string v3, "format"

    invoke-static {p1, v3, v0}, Lcom/google/android/gms/internal/ads/cpw;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/cci;->c:Z

    const-string v3, "fluid"

    const-string v4, "height"

    invoke-static {p1, v3, v4, v0}, Lcom/google/android/gms/internal/ads/cpw;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 24
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cci;->d:Ljava/lang/String;

    .line 25
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    xor-int/2addr v3, v2

    const-string v5, "sz"

    .line 26
    invoke-static {p1, v5, v0, v3}, Lcom/google/android/gms/internal/ads/cpw;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 27
    iget v0, p0, Lcom/google/android/gms/internal/ads/cci;->e:F

    const-string v3, "u_sd"

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 28
    iget v0, p0, Lcom/google/android/gms/internal/ads/cci;->f:I

    const-string v3, "sw"

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 29
    iget v0, p0, Lcom/google/android/gms/internal/ads/cci;->g:I

    const-string v3, "sh"

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 30
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cci;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    xor-int/2addr v2, v3

    const-string v3, "sc"

    invoke-static {p1, v3, v0, v2}, Lcom/google/android/gms/internal/ads/cpw;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 33
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/cci;->a:Lcom/google/android/gms/internal/ads/zzvt;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzvt;->zzcis:[Lcom/google/android/gms/internal/ads/zzvt;

    const-string v3, "is_fluid_height"

    const-string/jumbo v5, "width"

    if-nez v2, :cond_2

    .line 34
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 35
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/cci;->a:Lcom/google/android/gms/internal/ads/zzvt;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzvt;->height:I

    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 36
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/cci;->a:Lcom/google/android/gms/internal/ads/zzvt;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzvt;->width:I

    invoke-virtual {v1, v5, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 37
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/cci;->a:Lcom/google/android/gms/internal/ads/zzvt;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/ads/zzvt;->zzcit:Z

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 38
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 40
    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/cci;->a:Lcom/google/android/gms/internal/ads/zzvt;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzvt;->zzcis:[Lcom/google/android/gms/internal/ads/zzvt;

    array-length v6, v2

    :goto_2
    if-ge v1, v6, :cond_3

    aget-object v7, v2, v1

    .line 41
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 42
    iget-boolean v9, v7, Lcom/google/android/gms/internal/ads/zzvt;->zzcit:Z

    invoke-virtual {v8, v3, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 43
    iget v9, v7, Lcom/google/android/gms/internal/ads/zzvt;->height:I

    invoke-virtual {v8, v4, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 44
    iget v7, v7, Lcom/google/android/gms/internal/ads/zzvt;->width:I

    invoke-virtual {v8, v5, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 45
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    const-string/jumbo v1, "valid_ad_sizes"

    .line 47
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

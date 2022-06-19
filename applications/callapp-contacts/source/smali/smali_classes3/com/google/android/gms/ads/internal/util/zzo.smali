.class final Lcom/google/android/gms/ads/internal/util/zzo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/bu;


# instance fields
.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$uri:Landroid/net/Uri;

.field private final synthetic zzegx:Lcom/google/android/gms/internal/ads/br;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/util/zzj;Lcom/google/android/gms/internal/ads/br;Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/ads/internal/util/zzo;->zzegx:Lcom/google/android/gms/internal/ads/br;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/util/zzo;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/util/zzo;->val$uri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zztb()V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzo;->zzegx:Lcom/google/android/gms/internal/ads/br;

    .line 1025
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/br;->b:Landroidx/browser/customtabs/c;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 1026
    iput-object v2, v0, Lcom/google/android/gms/internal/ads/br;->a:Landroidx/browser/customtabs/f;

    goto :goto_0

    .line 1027
    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/br;->a:Landroidx/browser/customtabs/f;

    if-nez v1, :cond_1

    .line 1028
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/br;->b:Landroidx/browser/customtabs/c;

    invoke-virtual {v1}, Landroidx/browser/customtabs/c;->b()Landroidx/browser/customtabs/f;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/br;->a:Landroidx/browser/customtabs/f;

    .line 1029
    :cond_1
    :goto_0
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/br;->a:Landroidx/browser/customtabs/f;

    .line 3
    new-instance v1, Landroidx/browser/customtabs/d$a;

    invoke-direct {v1, v0}, Landroidx/browser/customtabs/d$a;-><init>(Landroidx/browser/customtabs/f;)V

    .line 4
    invoke-virtual {v1}, Landroidx/browser/customtabs/d$a;->a()Landroidx/browser/customtabs/d;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzo;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/util/zzo;->val$uri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3}, Landroidx/browser/customtabs/d;->a(Landroid/content/Context;Landroid/net/Uri;)V

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzo;->zzegx:Lcom/google/android/gms/internal/ads/br;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzo;->val$context:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    .line 2018
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/br;->c:Landroidx/browser/customtabs/e;

    if-eqz v3, :cond_2

    .line 2020
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/br;->c:Landroidx/browser/customtabs/e;

    invoke-virtual {v1, v3}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 2021
    iput-object v2, v0, Lcom/google/android/gms/internal/ads/br;->b:Landroidx/browser/customtabs/c;

    .line 2022
    iput-object v2, v0, Lcom/google/android/gms/internal/ads/br;->a:Landroidx/browser/customtabs/f;

    .line 2023
    iput-object v2, v0, Lcom/google/android/gms/internal/ads/br;->c:Landroidx/browser/customtabs/e;

    :cond_2
    return-void
.end method

.method public final zztc()V
    .locals 0

    return-void
.end method

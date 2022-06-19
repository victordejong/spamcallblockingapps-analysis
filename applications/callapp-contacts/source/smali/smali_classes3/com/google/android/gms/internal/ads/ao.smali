.class final synthetic Lcom/google/android/gms/internal/ads/ao;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cyn;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/am;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/am;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ao;->a:Lcom/google/android/gms/internal/ads/am;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ao;->a:Lcom/google/android/gms/internal/ads/am;

    .line 1075
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/am;->e:Landroid/content/SharedPreferences;

    const-string v1, "flag_configuration"

    const-string v2, "{}"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

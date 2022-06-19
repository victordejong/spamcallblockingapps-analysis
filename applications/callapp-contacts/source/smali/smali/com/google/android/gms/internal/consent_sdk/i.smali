.class final Lcom/google/android/gms/internal/consent_sdk/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/consent_sdk/v;


# instance fields
.field private a:Lcom/google/android/gms/internal/consent_sdk/ad;

.field private final synthetic b:Lcom/google/android/gms/internal/consent_sdk/h;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/consent_sdk/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/i;->b:Lcom/google/android/gms/internal/consent_sdk/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/consent_sdk/h;Lcom/google/android/gms/internal/consent_sdk/g;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/consent_sdk/i;-><init>(Lcom/google/android/gms/internal/consent_sdk/h;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/consent_sdk/s;
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/i;->a:Lcom/google/android/gms/internal/consent_sdk/ad;

    const-class v1, Lcom/google/android/gms/internal/consent_sdk/ad;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/consent_sdk/bv;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/consent_sdk/l;

    iget-object v1, p0, Lcom/google/android/gms/internal/consent_sdk/i;->b:Lcom/google/android/gms/internal/consent_sdk/h;

    iget-object v2, p0, Lcom/google/android/gms/internal/consent_sdk/i;->a:Lcom/google/android/gms/internal/consent_sdk/ad;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/consent_sdk/l;-><init>(Lcom/google/android/gms/internal/consent_sdk/h;Lcom/google/android/gms/internal/consent_sdk/ad;Lcom/google/android/gms/internal/consent_sdk/g;)V

    return-object v0
.end method

.method public final synthetic a(Lcom/google/android/gms/internal/consent_sdk/ad;)Lcom/google/android/gms/internal/consent_sdk/v;
    .locals 0

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/consent_sdk/bv;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/consent_sdk/ad;

    iput-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/i;->a:Lcom/google/android/gms/internal/consent_sdk/ad;

    return-object p0
.end method

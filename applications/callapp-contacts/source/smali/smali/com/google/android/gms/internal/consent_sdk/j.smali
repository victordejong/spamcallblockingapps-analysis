.class final Lcom/google/android/gms/internal/consent_sdk/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/consent_sdk/bb$a;


# instance fields
.field private a:Landroid/app/Application;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/consent_sdk/g;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/google/android/gms/internal/consent_sdk/j;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Landroid/app/Application;)Lcom/google/android/gms/internal/consent_sdk/bb$a;
    .locals 0

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/consent_sdk/bv;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    iput-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/j;->a:Landroid/app/Application;

    return-object p0
.end method

.method public final a()Lcom/google/android/gms/internal/consent_sdk/bb;
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/j;->a:Landroid/app/Application;

    const-class v1, Landroid/app/Application;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/consent_sdk/bv;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/consent_sdk/h;

    iget-object v1, p0, Lcom/google/android/gms/internal/consent_sdk/j;->a:Landroid/app/Application;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/consent_sdk/h;-><init>(Landroid/app/Application;Lcom/google/android/gms/internal/consent_sdk/g;)V

    return-object v0
.end method

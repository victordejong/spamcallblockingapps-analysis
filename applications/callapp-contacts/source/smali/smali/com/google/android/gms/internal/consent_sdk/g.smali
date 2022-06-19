.class final Lcom/google/android/gms/internal/consent_sdk/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/consent_sdk/bu;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/consent_sdk/bu<",
        "Lcom/google/android/gms/internal/consent_sdk/v;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/consent_sdk/h;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/consent_sdk/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/g;->a:Lcom/google/android/gms/internal/consent_sdk/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 3

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/consent_sdk/i;

    iget-object v1, p0, Lcom/google/android/gms/internal/consent_sdk/g;->a:Lcom/google/android/gms/internal/consent_sdk/h;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/consent_sdk/i;-><init>(Lcom/google/android/gms/internal/consent_sdk/h;Lcom/google/android/gms/internal/consent_sdk/g;)V

    return-object v0
.end method

.class final Lcom/google/android/gms/internal/consent_sdk/cq;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:I

.field final b:I

.field final c:Lcom/google/android/gms/internal/consent_sdk/ad;


# direct methods
.method private constructor <init>(IILcom/google/android/gms/internal/consent_sdk/ad;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/android/gms/internal/consent_sdk/cq;->a:I

    .line 3
    iput p2, p0, Lcom/google/android/gms/internal/consent_sdk/cq;->b:I

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/consent_sdk/cq;->c:Lcom/google/android/gms/internal/consent_sdk/ad;

    return-void
.end method

.method synthetic constructor <init>(IILcom/google/android/gms/internal/consent_sdk/ad;Lcom/google/android/gms/internal/consent_sdk/cp;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/consent_sdk/cq;-><init>(IILcom/google/android/gms/internal/consent_sdk/ad;)V

    return-void
.end method

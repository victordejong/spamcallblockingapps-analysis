.class final synthetic Lcom/google/firebase/crashlytics/internal/common/j;
.super Ljava/lang/Object;
.source "CrashlyticsCore.java"

# interfaces
.implements Lcom/google/firebase/crashlytics/d/f/a;


# instance fields
.field private final a:Lcom/google/firebase/crashlytics/internal/common/k;


# direct methods
.method private constructor <init>(Lcom/google/firebase/crashlytics/internal/common/k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/j;->a:Lcom/google/firebase/crashlytics/internal/common/k;

    return-void
.end method

.method public static b(Lcom/google/firebase/crashlytics/internal/common/k;)Lcom/google/firebase/crashlytics/d/f/a;
    .locals 1

    new-instance v0, Lcom/google/firebase/crashlytics/internal/common/j;

    invoke-direct {v0, p0}, Lcom/google/firebase/crashlytics/internal/common/j;-><init>(Lcom/google/firebase/crashlytics/internal/common/k;)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/j;->a:Lcom/google/firebase/crashlytics/internal/common/k;

    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/internal/common/k;->k(Ljava/lang/String;)V

    return-void
.end method

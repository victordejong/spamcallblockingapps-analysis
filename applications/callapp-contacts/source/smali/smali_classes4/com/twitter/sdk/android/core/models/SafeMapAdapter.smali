.class public Lcom/twitter/sdk/android/core/models/SafeMapAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/gson/k;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/google/gson/f;Lcom/google/gson/a/a;)Lcom/google/gson/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gson/f;",
            "Lcom/google/gson/a/a<",
            "TT;>;)",
            "Lcom/google/gson/j<",
            "TT;>;"
        }
    .end annotation

    .line 35
    invoke-virtual {p1, p0, p2}, Lcom/google/gson/f;->a(Lcom/google/gson/k;Lcom/google/gson/a/a;)Lcom/google/gson/j;

    move-result-object p1

    .line 37
    new-instance v0, Lcom/twitter/sdk/android/core/models/SafeMapAdapter$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/twitter/sdk/android/core/models/SafeMapAdapter$1;-><init>(Lcom/twitter/sdk/android/core/models/SafeMapAdapter;Lcom/google/gson/j;Lcom/google/gson/a/a;)V

    return-object v0
.end method

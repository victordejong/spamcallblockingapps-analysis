.class public abstract Lcom/google/android/datatransport/h/x/j/i;
.super Ljava/lang/Object;
.source "PersistedEvent.java"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(JLcom/google/android/datatransport/h/m;Lcom/google/android/datatransport/h/h;)Lcom/google/android/datatransport/h/x/j/i;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/datatransport/h/x/j/b;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/datatransport/h/x/j/b;-><init>(JLcom/google/android/datatransport/h/m;Lcom/google/android/datatransport/h/h;)V

    return-object v0
.end method


# virtual methods
.method public abstract b()Lcom/google/android/datatransport/h/h;
.end method

.method public abstract c()J
.end method

.method public abstract d()Lcom/google/android/datatransport/h/m;
.end method

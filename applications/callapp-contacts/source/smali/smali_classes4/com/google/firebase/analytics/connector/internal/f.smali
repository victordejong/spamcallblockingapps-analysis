.class public final Lcom/google/firebase/analytics/connector/internal/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lcom/google/firebase/analytics/connector/a$b;

.field private final b:Lcom/google/android/gms/measurement/a/a;

.field private final c:Lcom/google/firebase/analytics/connector/internal/e;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/a/a;Lcom/google/firebase/analytics/connector/a$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/firebase/analytics/connector/internal/f;->a:Lcom/google/firebase/analytics/connector/a$b;

    iput-object p1, p0, Lcom/google/firebase/analytics/connector/internal/f;->b:Lcom/google/android/gms/measurement/a/a;

    new-instance p2, Lcom/google/firebase/analytics/connector/internal/e;

    .line 1
    invoke-direct {p2, p0}, Lcom/google/firebase/analytics/connector/internal/e;-><init>(Lcom/google/firebase/analytics/connector/internal/f;)V

    iput-object p2, p0, Lcom/google/firebase/analytics/connector/internal/f;->c:Lcom/google/firebase/analytics/connector/internal/e;

    .line 2
    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/a/a;->a(Lcom/google/android/gms/measurement/a/a$a;)V

    return-void
.end method

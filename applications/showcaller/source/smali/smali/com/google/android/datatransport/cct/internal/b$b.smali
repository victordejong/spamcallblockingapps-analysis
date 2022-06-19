.class final Lcom/google/android/datatransport/cct/internal/b$b;
.super Ljava/lang/Object;
.source "AutoBatchedLogRequestEncoder.java"

# interfaces
.implements Lcom/google/firebase/encoders/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/datatransport/cct/internal/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/firebase/encoders/c<",
        "Lcom/google/android/datatransport/cct/internal/j;",
        ">;"
    }
.end annotation


# static fields
.field static final a:Lcom/google/android/datatransport/cct/internal/b$b;

.field private static final b:Lcom/google/firebase/encoders/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/datatransport/cct/internal/b$b;

    invoke-direct {v0}, Lcom/google/android/datatransport/cct/internal/b$b;-><init>()V

    sput-object v0, Lcom/google/android/datatransport/cct/internal/b$b;->a:Lcom/google/android/datatransport/cct/internal/b$b;

    const-string v0, "logRequest"

    .line 2
    invoke-static {v0}, Lcom/google/firebase/encoders/b;->b(Ljava/lang/String;)Lcom/google/firebase/encoders/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/datatransport/cct/internal/b$b;->b:Lcom/google/firebase/encoders/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/datatransport/cct/internal/j;

    check-cast p2, Lcom/google/firebase/encoders/d;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/datatransport/cct/internal/b$b;->b(Lcom/google/android/datatransport/cct/internal/j;Lcom/google/firebase/encoders/d;)V

    return-void
.end method

.method public b(Lcom/google/android/datatransport/cct/internal/j;Lcom/google/firebase/encoders/d;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/datatransport/cct/internal/b$b;->b:Lcom/google/firebase/encoders/b;

    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/internal/j;->c()Ljava/util/List;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lcom/google/firebase/encoders/d;->h(Lcom/google/firebase/encoders/b;Ljava/lang/Object;)Lcom/google/firebase/encoders/d;

    return-void
.end method

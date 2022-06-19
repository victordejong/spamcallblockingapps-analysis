.class public abstract Lcom/google/protobuf/o;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/o$c;,
        Lcom/google/protobuf/o$b;
    }
.end annotation


# static fields
.field public static final a:Lcom/google/protobuf/o;

.field public static final b:Lcom/google/protobuf/o;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/protobuf/o$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/protobuf/o$b;-><init>(Lcom/google/protobuf/o$a;)V

    sput-object v0, Lcom/google/protobuf/o;->a:Lcom/google/protobuf/o;

    .line 2
    new-instance v0, Lcom/google/protobuf/o$c;

    invoke-direct {v0, v1}, Lcom/google/protobuf/o$c;-><init>(Lcom/google/protobuf/o$a;)V

    sput-object v0, Lcom/google/protobuf/o;->b:Lcom/google/protobuf/o;

    return-void
.end method

.method public constructor <init>(Lcom/google/protobuf/o$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;J)V
.end method

.method public abstract b(Ljava/lang/Object;Ljava/lang/Object;J)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "J)V"
        }
    .end annotation
.end method

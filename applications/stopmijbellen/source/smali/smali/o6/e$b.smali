.class public final Lo6/e$b;
.super Lcom/google/protobuf/i$a;
.source "SourceFile"

# interfaces
.implements Lx6/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo6/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/i$a<",
        "Lo6/e;",
        "Lo6/e$b;",
        ">;",
        "Lx6/p;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lo6/e;->y()Lo6/e;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/i$a;-><init>(Lcom/google/protobuf/i;)V

    return-void
.end method

.method public constructor <init>(Lo6/e$a;)V
    .locals 0

    .line 2
    invoke-static {}, Lo6/e;->y()Lo6/e;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/protobuf/i$a;-><init>(Lcom/google/protobuf/i;)V

    return-void
.end method

.class public final Lo6/f$b;
.super Lcom/google/protobuf/i$a;
.source "SourceFile"

# interfaces
.implements Lx6/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo6/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/i$a<",
        "Lo6/f;",
        "Lo6/f$b;",
        ">;",
        "Lx6/p;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lo6/f;->y()Lo6/f;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/i$a;-><init>(Lcom/google/protobuf/i;)V

    return-void
.end method

.method public constructor <init>(Lo6/f$a;)V
    .locals 0

    .line 2
    invoke-static {}, Lo6/f;->y()Lo6/f;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/protobuf/i$a;-><init>(Lcom/google/protobuf/i;)V

    return-void
.end method

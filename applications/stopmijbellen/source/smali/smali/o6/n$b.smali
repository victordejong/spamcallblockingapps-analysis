.class public final Lo6/n$b;
.super Lcom/google/protobuf/i$a;
.source "SourceFile"

# interfaces
.implements Lx6/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo6/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/i$a<",
        "Lo6/n;",
        "Lo6/n$b;",
        ">;",
        "Lx6/p;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lo6/n$a;)V
    .locals 0

    .line 1
    invoke-static {}, Lo6/n;->y()Lo6/n;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/protobuf/i$a;-><init>(Lcom/google/protobuf/i;)V

    return-void
.end method

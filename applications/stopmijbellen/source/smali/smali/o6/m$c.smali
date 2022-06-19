.class public final Lo6/m$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo6/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# static fields
.field public static final a:Lcom/google/protobuf/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/q<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    sget-object v0, Lx6/c0;->k:Lx6/c0;

    sget-object v1, Lx6/c0;->e:Lx6/c0;

    const-wide/16 v2, 0x0

    .line 2
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 3
    new-instance v3, Lcom/google/protobuf/q;

    const-string v4, ""

    invoke-direct {v3, v0, v4, v1, v2}, Lcom/google/protobuf/q;-><init>(Lx6/c0;Ljava/lang/Object;Lx6/c0;Ljava/lang/Object;)V

    .line 4
    sput-object v3, Lo6/m$c;->a:Lcom/google/protobuf/q;

    return-void
.end method

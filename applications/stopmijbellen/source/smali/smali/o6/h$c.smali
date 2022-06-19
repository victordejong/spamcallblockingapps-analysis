.class public final Lo6/h$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo6/h;
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
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Lx6/c0;->k:Lx6/c0;

    .line 2
    new-instance v1, Lcom/google/protobuf/q;

    const-string v2, ""

    invoke-direct {v1, v0, v2, v0, v2}, Lcom/google/protobuf/q;-><init>(Lx6/c0;Ljava/lang/Object;Lx6/c0;Ljava/lang/Object;)V

    .line 3
    sput-object v1, Lo6/h$c;->a:Lcom/google/protobuf/q;

    return-void
.end method

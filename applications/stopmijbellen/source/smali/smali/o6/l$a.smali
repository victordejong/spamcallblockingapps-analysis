.class public final Lo6/l$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/k$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo6/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Lcom/google/protobuf/k$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lo6/l$a;

    invoke-direct {v0}, Lo6/l$a;-><init>()V

    sput-object v0, Lo6/l$a;->a:Lcom/google/protobuf/k$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

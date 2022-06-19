.class public final Lx6/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx6/x;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lx6/l$b;
    }
.end annotation


# static fields
.field public static final b:Lx6/o;


# instance fields
.field public final a:Lx6/o;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lx6/l$a;

    invoke-direct {v0}, Lx6/l$a;-><init>()V

    sput-object v0, Lx6/l;->b:Lx6/o;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 1
    new-instance v0, Lx6/l$b;

    const/4 v1, 0x2

    new-array v1, v1, [Lx6/o;

    .line 2
    sget-object v2, Lx6/h;->a:Lx6/h;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    :try_start_0
    const-string v2, "com.google.protobuf.DescriptorMessageInfoFactory"

    .line 3
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v4, "getInstance"

    new-array v5, v3, [Ljava/lang/Class;

    .line 4
    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v4, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lx6/o;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5
    :catch_0
    sget-object v2, Lx6/l;->b:Lx6/o;

    :goto_0
    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 6
    invoke-direct {v0, v1}, Lx6/l$b;-><init>([Lx6/o;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    sget-object v1, Lcom/google/protobuf/k;->a:Ljava/nio/charset/Charset;

    iput-object v0, p0, Lx6/l;->a:Lx6/o;

    return-void
.end method

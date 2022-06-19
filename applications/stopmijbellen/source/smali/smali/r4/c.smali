.class public final Lr4/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/concurrent/Executor;

.field public static final b:Ljava/util/concurrent/Executor;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lr4/n;

    invoke-direct {v0}, Lr4/n;-><init>()V

    sput-object v0, Lr4/c;->a:Ljava/util/concurrent/Executor;

    new-instance v0, Lr4/m;

    invoke-direct {v0}, Lr4/m;-><init>()V

    sput-object v0, Lr4/c;->b:Ljava/util/concurrent/Executor;

    return-void
.end method

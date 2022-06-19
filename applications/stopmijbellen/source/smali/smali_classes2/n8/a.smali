.class public Ln8/a;
.super Ljava/util/TimerTask;
.source "SourceFile"


# static fields
.field public static final synthetic b:I


# instance fields
.field public final synthetic a:Ln8/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Ln8/b;

    return-void
.end method

.method public constructor <init>(Ln8/b;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln8/a;->a:Ln8/b;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lm6/d;

    const-string v2, ".syncContactsIfNeed"

    const/4 v3, 0x1

    invoke-direct {v1, p0, v2, v3}, Lm6/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

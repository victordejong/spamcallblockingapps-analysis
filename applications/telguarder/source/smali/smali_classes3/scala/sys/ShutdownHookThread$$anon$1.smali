.class public final Lscala/sys/ShutdownHookThread$$anon$1;
.super Lscala/sys/ShutdownHookThread;
.source "ShutdownHookThread.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/sys/ShutdownHookThread$;->apply(Lscala/Function0;)Lscala/sys/ShutdownHookThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation


# instance fields
.field private final body$1:Lscala/Function0;


# direct methods
.method public constructor <init>(Lscala/Function0;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lscala/sys/ShutdownHookThread$$anon$1;->body$1:Lscala/Function0;

    sget-object p1, Lscala/sys/ShutdownHookThread$;->MODULE$:Lscala/sys/ShutdownHookThread$;

    invoke-virtual {p1}, Lscala/sys/ShutdownHookThread$;->scala$sys$ShutdownHookThread$$hookName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lscala/sys/ShutdownHookThread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 34
    iget-object v0, p0, Lscala/sys/ShutdownHookThread$$anon$1;->body$1:Lscala/Function0;

    invoke-interface {v0}, Lscala/Function0;->apply$mcV$sp()V

    return-void
.end method

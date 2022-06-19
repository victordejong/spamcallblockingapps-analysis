.class public final Lscala/sys/process/ProcessImpl$Spawn$$anon$1;
.super Ljava/lang/Thread;
.source "ProcessImpl.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/sys/process/ProcessImpl$Spawn$;->apply(Lscala/Function0;Z)Ljava/lang/Thread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation


# instance fields
.field private final f$1:Lscala/Function0;


# direct methods
.method public constructor <init>(Lscala/sys/process/ProcessImpl$Spawn$;Lscala/Function0;)V
    .locals 0

    .line 23
    iput-object p2, p0, Lscala/sys/process/ProcessImpl$Spawn$$anon$1;->f$1:Lscala/Function0;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 23
    iget-object v0, p0, Lscala/sys/process/ProcessImpl$Spawn$$anon$1;->f$1:Lscala/Function0;

    invoke-interface {v0}, Lscala/Function0;->apply$mcV$sp()V

    return-void
.end method

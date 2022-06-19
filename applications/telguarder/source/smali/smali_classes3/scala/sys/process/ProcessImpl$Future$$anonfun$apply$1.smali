.class public final Lscala/sys/process/ProcessImpl$Future$$anonfun$apply$1;
.super Lscala/runtime/AbstractFunction0$mcV$sp;
.source "ProcessImpl.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/sys/process/ProcessImpl$Future$;->apply(Lscala/Function0;)Lscala/Function0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field public final synthetic $outer:Lscala/sys/process/ProcessImpl$Future$;

.field public final f$2:Lscala/Function0;

.field public final result$1:Lscala/concurrent/SyncVar;


# direct methods
.method public constructor <init>(Lscala/sys/process/ProcessImpl$Future$;Lscala/Function0;Lscala/concurrent/SyncVar;)V
    .locals 0

    .line 36
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/sys/process/ProcessImpl$Future$$anonfun$apply$1;->$outer:Lscala/sys/process/ProcessImpl$Future$;

    iput-object p2, p0, Lscala/sys/process/ProcessImpl$Future$$anonfun$apply$1;->f$2:Lscala/Function0;

    iput-object p3, p0, Lscala/sys/process/ProcessImpl$Future$$anonfun$apply$1;->result$1:Lscala/concurrent/SyncVar;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction0$mcV$sp;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply()Ljava/lang/Object;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lscala/sys/process/ProcessImpl$Future$$anonfun$apply$1;->apply()V

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-object v0
.end method

.method public final apply()V
    .locals 3

    .line 36
    iget-object v0, p0, Lscala/sys/process/ProcessImpl$Future$$anonfun$apply$1;->$outer:Lscala/sys/process/ProcessImpl$Future$;

    iget-object v1, p0, Lscala/sys/process/ProcessImpl$Future$$anonfun$apply$1;->f$2:Lscala/Function0;

    iget-object v2, p0, Lscala/sys/process/ProcessImpl$Future$$anonfun$apply$1;->result$1:Lscala/concurrent/SyncVar;

    invoke-virtual {v0, v1, v2}, Lscala/sys/process/ProcessImpl$Future$;->scala$sys$process$ProcessImpl$Future$$run$1(Lscala/Function0;Lscala/concurrent/SyncVar;)V

    return-void
.end method

.method public apply$mcV$sp()V
    .locals 3

    .line 36
    iget-object v0, p0, Lscala/sys/process/ProcessImpl$Future$$anonfun$apply$1;->$outer:Lscala/sys/process/ProcessImpl$Future$;

    iget-object v1, p0, Lscala/sys/process/ProcessImpl$Future$$anonfun$apply$1;->f$2:Lscala/Function0;

    iget-object v2, p0, Lscala/sys/process/ProcessImpl$Future$$anonfun$apply$1;->result$1:Lscala/concurrent/SyncVar;

    invoke-virtual {v0, v1, v2}, Lscala/sys/process/ProcessImpl$Future$;->scala$sys$process$ProcessImpl$Future$$run$1(Lscala/Function0;Lscala/concurrent/SyncVar;)V

    return-void
.end method

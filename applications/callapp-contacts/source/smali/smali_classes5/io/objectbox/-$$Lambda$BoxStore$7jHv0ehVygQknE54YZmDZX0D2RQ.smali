.class public final synthetic Lio/objectbox/-$$Lambda$BoxStore$7jHv0ehVygQknE54YZmDZX0D2RQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/objectbox/-$$Lambda$BoxStore$7jHv0ehVygQknE54YZmDZX0D2RQ;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lio/objectbox/-$$Lambda$BoxStore$7jHv0ehVygQknE54YZmDZX0D2RQ;->f$0:Ljava/lang/String;

    invoke-static {v0}, Lio/objectbox/BoxStore;->lambda$7jHv0ehVygQknE54YZmDZX0D2RQ(Ljava/lang/String;)V

    return-void
.end method

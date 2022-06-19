.class public final synthetic Lio/objectbox/-$$Lambda$f$iAJx0cLqGkktLvgIUnh7HTNL5ns;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/objectbox/f;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Lio/objectbox/c/a;


# direct methods
.method public synthetic constructor <init>(Lio/objectbox/f;Ljava/lang/Object;Lio/objectbox/c/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/objectbox/-$$Lambda$f$iAJx0cLqGkktLvgIUnh7HTNL5ns;->f$0:Lio/objectbox/f;

    iput-object p2, p0, Lio/objectbox/-$$Lambda$f$iAJx0cLqGkktLvgIUnh7HTNL5ns;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Lio/objectbox/-$$Lambda$f$iAJx0cLqGkktLvgIUnh7HTNL5ns;->f$2:Lio/objectbox/c/a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lio/objectbox/-$$Lambda$f$iAJx0cLqGkktLvgIUnh7HTNL5ns;->f$0:Lio/objectbox/f;

    iget-object v1, p0, Lio/objectbox/-$$Lambda$f$iAJx0cLqGkktLvgIUnh7HTNL5ns;->f$1:Ljava/lang/Object;

    iget-object v2, p0, Lio/objectbox/-$$Lambda$f$iAJx0cLqGkktLvgIUnh7HTNL5ns;->f$2:Lio/objectbox/c/a;

    invoke-static {v0, v1, v2}, Lio/objectbox/f;->lambda$iAJx0cLqGkktLvgIUnh7HTNL5ns(Lio/objectbox/f;Ljava/lang/Object;Lio/objectbox/c/a;)V

    return-void
.end method

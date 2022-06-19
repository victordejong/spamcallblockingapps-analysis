.class public final synthetic Lio/objectbox/query/-$$Lambda$Query$iuJtMMLbI-iJEHEo3YteEt1XvrM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/objectbox/query/Query;

.field public final synthetic f$1:Lio/objectbox/query/c;


# direct methods
.method public synthetic constructor <init>(Lio/objectbox/query/Query;Lio/objectbox/query/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/objectbox/query/-$$Lambda$Query$iuJtMMLbI-iJEHEo3YteEt1XvrM;->f$0:Lio/objectbox/query/Query;

    iput-object p2, p0, Lio/objectbox/query/-$$Lambda$Query$iuJtMMLbI-iJEHEo3YteEt1XvrM;->f$1:Lio/objectbox/query/c;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lio/objectbox/query/-$$Lambda$Query$iuJtMMLbI-iJEHEo3YteEt1XvrM;->f$0:Lio/objectbox/query/Query;

    iget-object v1, p0, Lio/objectbox/query/-$$Lambda$Query$iuJtMMLbI-iJEHEo3YteEt1XvrM;->f$1:Lio/objectbox/query/c;

    invoke-static {v0, v1}, Lio/objectbox/query/Query;->lambda$iuJtMMLbI-iJEHEo3YteEt1XvrM(Lio/objectbox/query/Query;Lio/objectbox/query/c;)V

    return-void
.end method

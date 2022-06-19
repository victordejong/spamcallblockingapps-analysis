.class public final Lio/objectbox/relation/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<SOURCE:",
        "Ljava/lang/Object;",
        "TARGET:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field public final a:Lio/objectbox/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/c<",
            "TSOURCE;>;"
        }
    .end annotation
.end field

.field public final b:Lio/objectbox/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/c<",
            "TTARGET;>;"
        }
    .end annotation
.end field

.field public final c:Lio/objectbox/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/g<",
            "*>;"
        }
    .end annotation
.end field

.field public final d:I

.field public final e:Lio/objectbox/b/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/b/h<",
            "TSOURCE;>;"
        }
    .end annotation
.end field

.field public final f:Lio/objectbox/b/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/b/g<",
            "TSOURCE;>;"
        }
    .end annotation
.end field

.field public final g:Lio/objectbox/b/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/b/h<",
            "TTARGET;>;"
        }
    .end annotation
.end field

.field public final h:Lio/objectbox/b/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/b/g<",
            "TTARGET;>;"
        }
    .end annotation
.end field

.field public final i:I


# direct methods
.method public constructor <init>(Lio/objectbox/c;Lio/objectbox/c;Lio/objectbox/b/g;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/objectbox/c<",
            "TSOURCE;>;",
            "Lio/objectbox/c<",
            "TTARGET;>;",
            "Lio/objectbox/b/g<",
            "TSOURCE;>;I)V"
        }
    .end annotation

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-object p1, p0, Lio/objectbox/relation/b;->a:Lio/objectbox/c;

    .line 115
    iput-object p2, p0, Lio/objectbox/relation/b;->b:Lio/objectbox/c;

    .line 116
    iput-object p3, p0, Lio/objectbox/relation/b;->f:Lio/objectbox/b/g;

    .line 117
    iput p4, p0, Lio/objectbox/relation/b;->i:I

    const/4 p1, 0x0

    .line 118
    iput p1, p0, Lio/objectbox/relation/b;->d:I

    const/4 p1, 0x0

    .line 119
    iput-object p1, p0, Lio/objectbox/relation/b;->c:Lio/objectbox/g;

    .line 120
    iput-object p1, p0, Lio/objectbox/relation/b;->e:Lio/objectbox/b/h;

    .line 121
    iput-object p1, p0, Lio/objectbox/relation/b;->g:Lio/objectbox/b/h;

    .line 122
    iput-object p1, p0, Lio/objectbox/relation/b;->h:Lio/objectbox/b/g;

    return-void
.end method

.method public constructor <init>(Lio/objectbox/c;Lio/objectbox/c;Lio/objectbox/b/g;Lio/objectbox/b/g;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/objectbox/c<",
            "TSOURCE;>;",
            "Lio/objectbox/c<",
            "TTARGET;>;",
            "Lio/objectbox/b/g<",
            "TSOURCE;>;",
            "Lio/objectbox/b/g<",
            "TTARGET;>;I)V"
        }
    .end annotation

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p1, p0, Lio/objectbox/relation/b;->a:Lio/objectbox/c;

    .line 99
    iput-object p2, p0, Lio/objectbox/relation/b;->b:Lio/objectbox/c;

    .line 100
    iput-object p3, p0, Lio/objectbox/relation/b;->f:Lio/objectbox/b/g;

    .line 101
    iput p5, p0, Lio/objectbox/relation/b;->d:I

    .line 102
    iput-object p4, p0, Lio/objectbox/relation/b;->h:Lio/objectbox/b/g;

    const/4 p1, 0x0

    .line 103
    iput-object p1, p0, Lio/objectbox/relation/b;->c:Lio/objectbox/g;

    .line 104
    iput-object p1, p0, Lio/objectbox/relation/b;->e:Lio/objectbox/b/h;

    .line 105
    iput-object p1, p0, Lio/objectbox/relation/b;->g:Lio/objectbox/b/h;

    const/4 p1, 0x0

    .line 106
    iput p1, p0, Lio/objectbox/relation/b;->i:I

    return-void
.end method

.method public constructor <init>(Lio/objectbox/c;Lio/objectbox/c;Lio/objectbox/b/g;Lio/objectbox/g;Lio/objectbox/b/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/objectbox/c<",
            "TSOURCE;>;",
            "Lio/objectbox/c<",
            "TTARGET;>;",
            "Lio/objectbox/b/g<",
            "TSOURCE;>;",
            "Lio/objectbox/g<",
            "TTARGET;>;",
            "Lio/objectbox/b/h<",
            "TTARGET;>;)V"
        }
    .end annotation

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lio/objectbox/relation/b;->a:Lio/objectbox/c;

    .line 83
    iput-object p2, p0, Lio/objectbox/relation/b;->b:Lio/objectbox/c;

    .line 84
    iput-object p4, p0, Lio/objectbox/relation/b;->c:Lio/objectbox/g;

    .line 85
    iput-object p3, p0, Lio/objectbox/relation/b;->f:Lio/objectbox/b/g;

    .line 86
    iput-object p5, p0, Lio/objectbox/relation/b;->g:Lio/objectbox/b/h;

    const/4 p1, 0x0

    .line 87
    iput p1, p0, Lio/objectbox/relation/b;->d:I

    const/4 p2, 0x0

    .line 88
    iput-object p2, p0, Lio/objectbox/relation/b;->e:Lio/objectbox/b/h;

    .line 89
    iput-object p2, p0, Lio/objectbox/relation/b;->h:Lio/objectbox/b/g;

    .line 90
    iput p1, p0, Lio/objectbox/relation/b;->i:I

    return-void
.end method

.method public constructor <init>(Lio/objectbox/c;Lio/objectbox/c;Lio/objectbox/g;Lio/objectbox/b/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/objectbox/c<",
            "TSOURCE;>;",
            "Lio/objectbox/c<",
            "TTARGET;>;",
            "Lio/objectbox/g<",
            "TSOURCE;>;",
            "Lio/objectbox/b/h<",
            "TSOURCE;>;)V"
        }
    .end annotation

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lio/objectbox/relation/b;->a:Lio/objectbox/c;

    .line 67
    iput-object p2, p0, Lio/objectbox/relation/b;->b:Lio/objectbox/c;

    .line 68
    iput-object p3, p0, Lio/objectbox/relation/b;->c:Lio/objectbox/g;

    .line 69
    iput-object p4, p0, Lio/objectbox/relation/b;->e:Lio/objectbox/b/h;

    const/4 p1, 0x0

    .line 70
    iput p1, p0, Lio/objectbox/relation/b;->d:I

    const/4 p2, 0x0

    .line 71
    iput-object p2, p0, Lio/objectbox/relation/b;->g:Lio/objectbox/b/h;

    .line 72
    iput-object p2, p0, Lio/objectbox/relation/b;->h:Lio/objectbox/b/g;

    .line 73
    iput-object p2, p0, Lio/objectbox/relation/b;->f:Lio/objectbox/b/g;

    .line 74
    iput p1, p0, Lio/objectbox/relation/b;->i:I

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RelationInfo from "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/objectbox/relation/b;->a:Lio/objectbox/c;

    invoke-interface {v1}, Lio/objectbox/c;->getEntityClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/objectbox/relation/b;->b:Lio/objectbox/c;

    invoke-interface {v1}, Lio/objectbox/c;->getEntityClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

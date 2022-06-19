.class public Loi1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Loi1$b;
    }
.end annotation


# static fields
.field public static final j:Lpi1;

.field public static final k:Lpi1;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lri1;

.field public c:Ljava/lang/Class;

.field public d:Lni1;

.field public final f:[Ljava/lang/Object;

.field public g:Lpi1;

.field public h:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lli1;

    invoke-direct {v0}, Lli1;-><init>()V

    sput-object v0, Loi1;->j:Lpi1;

    new-instance v0, Lji1;

    invoke-direct {v0}, Lji1;-><init>()V

    sput-object v0, Loi1;->k:Lpi1;

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Loi1;->d:Lni1;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Loi1;->f:[Ljava/lang/Object;

    iput-object p1, p0, Loi1;->a:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Loi1$a;)V
    .locals 0

    invoke-direct {p0, p1}, Loi1;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static varargs h(Ljava/lang/String;[F)Loi1;
    .locals 1

    new-instance v0, Loi1$b;

    invoke-direct {v0, p0, p1}, Loi1$b;-><init>(Ljava/lang/String;[F)V

    return-object v0
.end method


# virtual methods
.method public b(F)V
    .locals 1

    iget-object v0, p0, Loi1;->d:Lni1;

    invoke-virtual {v0, p1}, Lni1;->b(F)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Loi1;->h:Ljava/lang/Object;

    return-void
.end method

.method public c()Loi1;
    .locals 2

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Loi1;

    iget-object v1, p0, Loi1;->a:Ljava/lang/String;

    iput-object v1, v0, Loi1;->a:Ljava/lang/String;

    iget-object v1, p0, Loi1;->b:Lri1;

    iput-object v1, v0, Loi1;->b:Lri1;

    iget-object v1, p0, Loi1;->d:Lni1;

    invoke-virtual {v1}, Lni1;->a()Lni1;

    move-result-object v1

    iput-object v1, v0, Loi1;->d:Lni1;

    iget-object v1, p0, Loi1;->g:Lpi1;

    iput-object v1, v0, Loi1;->g:Lpi1;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Loi1;->c()Loi1;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Loi1;->h:Ljava/lang/Object;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Loi1;->a:Ljava/lang/String;

    return-object v0
.end method

.method public g()V
    .locals 2

    iget-object v0, p0, Loi1;->g:Lpi1;

    if-nez v0, :cond_2

    iget-object v0, p0, Loi1;->c:Ljava/lang/Class;

    const-class v1, Ljava/lang/Integer;

    if-ne v0, v1, :cond_0

    sget-object v0, Loi1;->j:Lpi1;

    goto :goto_0

    :cond_0
    const-class v1, Ljava/lang/Float;

    if-ne v0, v1, :cond_1

    sget-object v0, Loi1;->k:Lpi1;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Loi1;->g:Lpi1;

    :cond_2
    iget-object v0, p0, Loi1;->g:Lpi1;

    if-eqz v0, :cond_3

    iget-object v1, p0, Loi1;->d:Lni1;

    invoke-virtual {v1, v0}, Lni1;->d(Lpi1;)V

    :cond_3
    return-void
.end method

.method public varargs i([F)V
    .locals 1

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    iput-object v0, p0, Loi1;->c:Ljava/lang/Class;

    invoke-static {p1}, Lni1;->c([F)Lni1;

    move-result-object p1

    iput-object p1, p0, Loi1;->d:Lni1;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Loi1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Loi1;->d:Lni1;

    invoke-virtual {v1}, Lni1;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

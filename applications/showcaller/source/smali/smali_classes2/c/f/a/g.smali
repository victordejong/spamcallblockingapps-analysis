.class public Lc/f/a/g;
.super Ljava/lang/Object;
.source "PropertyValuesHolder.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/f/a/g$b;
    }
.end annotation


# static fields
.field private static final d:Lc/f/a/h;

.field private static final e:Lc/f/a/h;

.field private static f:[Ljava/lang/Class;

.field private static g:[Ljava/lang/Class;

.field private static h:[Ljava/lang/Class;

.field private static final i:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final j:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field k:Ljava/lang/String;

.field l:Ljava/lang/reflect/Method;

.field private m:Ljava/lang/reflect/Method;

.field n:Ljava/lang/Class;

.field o:Lc/f/a/f;

.field final p:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field final q:[Ljava/lang/Object;

.field private r:Lc/f/a/h;

.field private s:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 1
    const-class v0, Ljava/lang/Integer;

    const-class v1, Ljava/lang/Double;

    const-class v2, Ljava/lang/Float;

    new-instance v3, Lc/f/a/d;

    invoke-direct {v3}, Lc/f/a/d;-><init>()V

    sput-object v3, Lc/f/a/g;->d:Lc/f/a/h;

    .line 2
    new-instance v3, Lc/f/a/b;

    invoke-direct {v3}, Lc/f/a/b;-><init>()V

    sput-object v3, Lc/f/a/g;->e:Lc/f/a/h;

    const/4 v3, 0x6

    new-array v4, v3, [Ljava/lang/Class;

    .line 3
    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v7, 0x1

    aput-object v2, v4, v7

    sget-object v8, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x2

    aput-object v8, v4, v9

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v10, 0x3

    aput-object v8, v4, v10

    const/4 v11, 0x4

    aput-object v1, v4, v11

    const/4 v12, 0x5

    aput-object v0, v4, v12

    sput-object v4, Lc/f/a/g;->f:[Ljava/lang/Class;

    new-array v4, v3, [Ljava/lang/Class;

    aput-object v8, v4, v6

    aput-object v0, v4, v7

    aput-object v5, v4, v9

    .line 4
    sget-object v13, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v13, v4, v10

    aput-object v2, v4, v11

    aput-object v1, v4, v12

    sput-object v4, Lc/f/a/g;->g:[Ljava/lang/Class;

    new-array v3, v3, [Ljava/lang/Class;

    aput-object v13, v3, v6

    aput-object v1, v3, v7

    aput-object v5, v3, v9

    aput-object v8, v3, v10

    aput-object v2, v3, v11

    aput-object v0, v3, v12

    .line 5
    sput-object v3, Lc/f/a/g;->h:[Ljava/lang/Class;

    .line 6
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lc/f/a/g;->i:Ljava/util/HashMap;

    .line 7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lc/f/a/g;->j:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lc/f/a/g;->l:Ljava/lang/reflect/Method;

    .line 4
    iput-object v0, p0, Lc/f/a/g;->m:Ljava/lang/reflect/Method;

    .line 5
    iput-object v0, p0, Lc/f/a/g;->o:Lc/f/a/f;

    .line 6
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lc/f/a/g;->p:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 7
    iput-object v0, p0, Lc/f/a/g;->q:[Ljava/lang/Object;

    .line 8
    iput-object p1, p0, Lc/f/a/g;->k:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lc/f/a/g$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lc/f/a/g;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static varargs h(Ljava/lang/String;[F)Lc/f/a/g;
    .locals 1

    .line 1
    new-instance v0, Lc/f/a/g$b;

    invoke-direct {v0, p0, p1}, Lc/f/a/g$b;-><init>(Ljava/lang/String;[F)V

    return-object v0
.end method


# virtual methods
.method a(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/f/a/g;->o:Lc/f/a/f;

    invoke-virtual {v0, p1}, Lc/f/a/f;->b(F)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lc/f/a/g;->s:Ljava/lang/Object;

    return-void
.end method

.method public b()Lc/f/a/g;
    .locals 2

    .line 1
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/f/a/g;

    .line 2
    iget-object v1, p0, Lc/f/a/g;->k:Ljava/lang/String;

    iput-object v1, v0, Lc/f/a/g;->k:Ljava/lang/String;

    .line 3
    iget-object v1, p0, Lc/f/a/g;->o:Lc/f/a/f;

    invoke-virtual {v1}, Lc/f/a/f;->a()Lc/f/a/f;

    move-result-object v1

    iput-object v1, v0, Lc/f/a/g;->o:Lc/f/a/f;

    .line 4
    iget-object v1, p0, Lc/f/a/g;->r:Lc/f/a/h;

    iput-object v1, v0, Lc/f/a/g;->r:Lc/f/a/h;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method c()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/f/a/g;->s:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/f/a/g;->b()Lc/f/a/g;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/f/a/g;->k:Ljava/lang/String;

    return-object v0
.end method

.method g()V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/f/a/g;->r:Lc/f/a/h;

    if-nez v0, :cond_2

    .line 2
    iget-object v0, p0, Lc/f/a/g;->n:Ljava/lang/Class;

    const-class v1, Ljava/lang/Integer;

    if-ne v0, v1, :cond_0

    sget-object v0, Lc/f/a/g;->d:Lc/f/a/h;

    goto :goto_0

    :cond_0
    const-class v1, Ljava/lang/Float;

    if-ne v0, v1, :cond_1

    sget-object v0, Lc/f/a/g;->e:Lc/f/a/h;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lc/f/a/g;->r:Lc/f/a/h;

    .line 3
    :cond_2
    iget-object v0, p0, Lc/f/a/g;->r:Lc/f/a/h;

    if-eqz v0, :cond_3

    .line 4
    iget-object v1, p0, Lc/f/a/g;->o:Lc/f/a/f;

    invoke-virtual {v1, v0}, Lc/f/a/f;->d(Lc/f/a/h;)V

    :cond_3
    return-void
.end method

.method public varargs i([F)V
    .locals 1

    .line 1
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    iput-object v0, p0, Lc/f/a/g;->n:Ljava/lang/Class;

    .line 2
    invoke-static {p1}, Lc/f/a/f;->c([F)Lc/f/a/f;

    move-result-object p1

    iput-object p1, p0, Lc/f/a/g;->o:Lc/f/a/f;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lc/f/a/g;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/f/a/g;->o:Lc/f/a/f;

    invoke-virtual {v1}, Lc/f/a/f;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

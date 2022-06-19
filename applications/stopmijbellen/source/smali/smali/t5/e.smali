.class public final Lt5/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls5/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lt5/e$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ls5/b<",
        "Lt5/e;",
        ">;"
    }
.end annotation


# static fields
.field public static final e:Lt5/e$a;


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lr5/d<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lr5/f<",
            "*>;>;"
        }
    .end annotation
.end field

.field public c:Lr5/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr5/d<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public d:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lt5/e$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lt5/e$a;-><init>(Lt5/d;)V

    sput-object v0, Lt5/e;->e:Lt5/e$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lt5/e;->a:Ljava/util/Map;

    .line 3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lt5/e;->b:Ljava/util/Map;

    .line 4
    sget-object v2, Lt5/a;->a:Lt5/a;

    iput-object v2, p0, Lt5/e;->c:Lr5/d;

    const/4 v2, 0x0

    .line 5
    iput-boolean v2, p0, Lt5/e;->d:Z

    .line 6
    const-class v2, Ljava/lang/String;

    sget-object v3, Lt5/b;->a:Lt5/b;

    .line 7
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    const-class v2, Ljava/lang/Boolean;

    sget-object v3, Lt5/c;->a:Lt5/c;

    .line 10
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    const-class v2, Ljava/util/Date;

    sget-object v3, Lt5/e;->e:Lt5/e$a;

    .line 13
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.class public final Lpv$c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpv$c$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/io/FileDescriptor;",
            "Lpv$c$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lpv$c;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a(Ljava/io/FileDescriptor;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lpv$c;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lpv$c;->a:Ljava/util/Map;

    new-instance v1, Lpv$c$a;

    invoke-direct {v1}, Lpv$c$a;-><init>()V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lpv$c;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Loa;->d(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lpv$c$a;

    iget v0, p1, Lpv$c$a;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lpv$c$a;->b:I

    iget-object p1, p1, Lpv$c$a;->a:Ljava/lang/Object;

    return-object p1
.end method

.method public b(Ljava/io/FileDescriptor;)V
    .locals 2

    iget-object v0, p0, Lpv$c;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Loa;->d(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lpv$c$a;

    iget v1, v0, Lpv$c$a;->b:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lpv$c$a;->b:I

    if-nez v1, :cond_0

    iget-object v0, p0, Lpv$c;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

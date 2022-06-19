.class public final Lkotlin/reflect/jvm/internal/impl/b/b/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/b/b/h$b;,
        Lkotlin/reflect/jvm/internal/impl/b/b/h$a;
    }
.end annotation


# static fields
.field public static final a:Lkotlin/reflect/jvm/internal/impl/b/b/h$a;


# instance fields
.field public final b:Lkotlin/reflect/jvm/internal/impl/b/b/h$b;

.field public final c:Lkotlin/reflect/jvm/internal/impl/b/a$u$c;

.field private final d:Lkotlin/a;

.field private final e:Ljava/lang/Integer;

.field private final f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/b/b/h$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/b/b/h$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/b/b/h;->a:Lkotlin/reflect/jvm/internal/impl/b/b/h$a;

    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/b/b/h$b;Lkotlin/reflect/jvm/internal/impl/b/a$u$c;Lkotlin/a;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 1

    const-string v0, "version"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kind"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "level"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/b/h;->b:Lkotlin/reflect/jvm/internal/impl/b/b/h$b;

    .line 26
    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/b/b/h;->c:Lkotlin/reflect/jvm/internal/impl/b/a$u$c;

    .line 27
    iput-object p3, p0, Lkotlin/reflect/jvm/internal/impl/b/b/h;->d:Lkotlin/a;

    .line 28
    iput-object p4, p0, Lkotlin/reflect/jvm/internal/impl/b/b/h;->e:Ljava/lang/Integer;

    .line 29
    iput-object p5, p0, Lkotlin/reflect/jvm/internal/impl/b/b/h;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 4

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "since "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/b/h;->b:Lkotlin/reflect/jvm/internal/impl/b/b/h$b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/b/h;->d:Lkotlin/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/b/h;->e:Ljava/lang/Integer;

    const-string v2, ""

    if-eqz v1, :cond_0

    const-string v3, " error "

    invoke-static {v3, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/b/h;->f:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v2, ": "

    invoke-static {v2, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

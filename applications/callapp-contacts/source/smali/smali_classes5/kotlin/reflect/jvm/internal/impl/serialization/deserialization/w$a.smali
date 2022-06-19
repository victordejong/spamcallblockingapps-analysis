.class public final Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/w$a;
.super Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/w;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field final d:Lkotlin/reflect/jvm/internal/impl/b/a$b;

.field public final e:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/w$a;

.field public final f:Lkotlin/reflect/jvm/internal/impl/c/a;

.field public final g:Lkotlin/reflect/jvm/internal/impl/b/a$b$b;

.field public final h:Z


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/b/a$b;Lkotlin/reflect/jvm/internal/impl/b/b/c;Lkotlin/reflect/jvm/internal/impl/b/b/g;Lkotlin/reflect/jvm/internal/impl/descriptors/at;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/w$a;)V
    .locals 1

    const-string v0, "classProto"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameResolver"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeTable"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p2, p3, p4, v0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/w;-><init>(Lkotlin/reflect/jvm/internal/impl/b/b/c;Lkotlin/reflect/jvm/internal/impl/b/b/g;Lkotlin/reflect/jvm/internal/impl/descriptors/at;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 33
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/w$a;->d:Lkotlin/reflect/jvm/internal/impl/b/a$b;

    .line 37
    iput-object p5, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/w$a;->e:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/w$a;

    .line 9957
    iget p3, p1, Lkotlin/reflect/jvm/internal/impl/b/a$b;->c:I

    .line 39
    invoke-static {p2, p3}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/u;->a(Lkotlin/reflect/jvm/internal/impl/b/b/c;I)Lkotlin/reflect/jvm/internal/impl/c/a;

    move-result-object p2

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/w$a;->f:Lkotlin/reflect/jvm/internal/impl/c/a;

    .line 41
    sget-object p2, Lkotlin/reflect/jvm/internal/impl/b/b/b;->e:Lkotlin/reflect/jvm/internal/impl/b/b/b$c;

    .line 10942
    iget p3, p1, Lkotlin/reflect/jvm/internal/impl/b/a$b;->b:I

    .line 41
    invoke-virtual {p2, p3}, Lkotlin/reflect/jvm/internal/impl/b/b/b$c;->b(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lkotlin/reflect/jvm/internal/impl/b/a$b$b;

    if-nez p2, :cond_0

    sget-object p2, Lkotlin/reflect/jvm/internal/impl/b/a$b$b;->CLASS:Lkotlin/reflect/jvm/internal/impl/b/a$b$b;

    :cond_0
    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/w$a;->g:Lkotlin/reflect/jvm/internal/impl/b/a$b$b;

    .line 42
    sget-object p2, Lkotlin/reflect/jvm/internal/impl/b/b/b;->f:Lkotlin/reflect/jvm/internal/impl/b/b/b$a;

    .line 11942
    iget p1, p1, Lkotlin/reflect/jvm/internal/impl/b/a$b;->b:I

    .line 42
    invoke-virtual {p2, p1}, Lkotlin/reflect/jvm/internal/impl/b/b/b$a;->a(I)Ljava/lang/Boolean;

    move-result-object p1

    const-string p2, "IS_INNER.get(classProto.flags)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/w$a;->h:Z

    return-void
.end method


# virtual methods
.method public final a()Lkotlin/reflect/jvm/internal/impl/c/b;
    .locals 2

    .line 44
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/w$a;->f:Lkotlin/reflect/jvm/internal/impl/c/a;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/c/a;->f()Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object v0

    const-string v1, "classId.asSingleFqName()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

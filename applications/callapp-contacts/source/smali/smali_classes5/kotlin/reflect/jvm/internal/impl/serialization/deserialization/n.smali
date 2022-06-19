.class public abstract Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/n;
.super Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/m;
.source "SourceFile"


# instance fields
.field final b:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/v;

.field private final c:Lkotlin/reflect/jvm/internal/impl/b/b/a;

.field private final d:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/f;

.field private final e:Lkotlin/reflect/jvm/internal/impl/b/b/d;

.field private f:Lkotlin/reflect/jvm/internal/impl/b/a$l;

.field private g:Lkotlin/reflect/jvm/internal/impl/resolve/e/h;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/c/b;Lkotlin/reflect/jvm/internal/impl/f/n;Lkotlin/reflect/jvm/internal/impl/descriptors/ab;Lkotlin/reflect/jvm/internal/impl/b/a$l;Lkotlin/reflect/jvm/internal/impl/b/b/a;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/f;)V
    .locals 1

    const-string v0, "fqName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "storageManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "module"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "proto"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "metadataVersion"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-direct {p0, p1, p2, p3}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/m;-><init>(Lkotlin/reflect/jvm/internal/impl/c/b;Lkotlin/reflect/jvm/internal/impl/f/n;Lkotlin/reflect/jvm/internal/impl/descriptors/ab;)V

    .line 35
    iput-object p5, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/n;->c:Lkotlin/reflect/jvm/internal/impl/b/b/a;

    .line 36
    iput-object p6, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/n;->d:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/f;

    .line 38
    new-instance p1, Lkotlin/reflect/jvm/internal/impl/b/b/d;

    .line 23626
    iget-object p2, p4, Lkotlin/reflect/jvm/internal/impl/b/a$l;->b:Lkotlin/reflect/jvm/internal/impl/b/a$o;

    const-string p3, "proto.strings"

    .line 38
    invoke-static {p2, p3}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23641
    iget-object p3, p4, Lkotlin/reflect/jvm/internal/impl/b/a$l;->c:Lkotlin/reflect/jvm/internal/impl/b/a$n;

    const-string p6, "proto.qualifiedNames"

    .line 38
    invoke-static {p3, p6}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, p2, p3}, Lkotlin/reflect/jvm/internal/impl/b/b/d;-><init>(Lkotlin/reflect/jvm/internal/impl/b/a$o;Lkotlin/reflect/jvm/internal/impl/b/a$n;)V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/n;->e:Lkotlin/reflect/jvm/internal/impl/b/b/d;

    .line 41
    new-instance p2, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/v;

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/b/b/c;

    new-instance p3, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/n$a;

    invoke-direct {p3, p0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/n$a;-><init>(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/n;)V

    check-cast p3, Lkotlin/jvm/functions/Function1;

    invoke-direct {p2, p4, p1, p5, p3}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/v;-><init>(Lkotlin/reflect/jvm/internal/impl/b/a$l;Lkotlin/reflect/jvm/internal/impl/b/b/c;Lkotlin/reflect/jvm/internal/impl/b/b/a;Lkotlin/jvm/functions/Function1;)V

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/n;->b:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/v;

    .line 44
    iput-object p4, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/n;->f:Lkotlin/reflect/jvm/internal/impl/b/a$l;

    return-void
.end method

.method public static final synthetic a(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/n;)Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/f;
    .locals 0

    .line 30
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/n;->d:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/f;

    return-object p0
.end method


# virtual methods
.method public final a()Lkotlin/reflect/jvm/internal/impl/resolve/e/h;
    .locals 1

    .line 60
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/n;->g:Lkotlin/reflect/jvm/internal/impl/resolve/e/h;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "_memberScope"

    invoke-static {v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final a(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;)V
    .locals 10

    const-string v0, "components"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/n;->f:Lkotlin/reflect/jvm/internal/impl/b/a$l;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 49
    iput-object v1, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/n;->f:Lkotlin/reflect/jvm/internal/impl/b/a$l;

    .line 50
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/i;

    .line 51
    move-object v3, p0

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/descriptors/ae;

    .line 23656
    iget-object v4, v0, Lkotlin/reflect/jvm/internal/impl/b/a$l;->d:Lkotlin/reflect/jvm/internal/impl/b/a$k;

    const-string v0, "proto.`package`"

    .line 51
    invoke-static {v4, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/n;->e:Lkotlin/reflect/jvm/internal/impl/b/b/d;

    move-object v5, v0

    check-cast v5, Lkotlin/reflect/jvm/internal/impl/b/b/c;

    iget-object v6, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/n;->c:Lkotlin/reflect/jvm/internal/impl/b/b/a;

    iget-object v7, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/n;->d:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/f;

    .line 52
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/n$b;

    invoke-direct {v0, p0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/n$b;-><init>(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/n;)V

    move-object v9, v0

    check-cast v9, Lkotlin/jvm/functions/Function0;

    move-object v2, v1

    move-object v8, p1

    .line 50
    invoke-direct/range {v2 .. v9}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/i;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/ae;Lkotlin/reflect/jvm/internal/impl/b/a$k;Lkotlin/reflect/jvm/internal/impl/b/b/c;Lkotlin/reflect/jvm/internal/impl/b/b/a;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/f;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;Lkotlin/jvm/functions/Function0;)V

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/resolve/e/h;

    iput-object v1, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/n;->g:Lkotlin/reflect/jvm/internal/impl/resolve/e/h;

    return-void

    .line 48
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Repeated call to DeserializedPackageFragmentImpl::initialize"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public final bridge synthetic d()Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/g;
    .locals 1

    .line 24040
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/n;->b:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/v;

    .line 30
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/g;

    return-object v0
.end method

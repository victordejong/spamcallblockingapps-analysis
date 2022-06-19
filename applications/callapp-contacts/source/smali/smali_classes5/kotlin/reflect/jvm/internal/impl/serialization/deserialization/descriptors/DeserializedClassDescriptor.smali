.class public final Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;
.super Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/descriptors/t;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor$DeserializedClassTypeConstructor;,
        Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor$a;,
        Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor$b;
    }
.end annotation


# instance fields
.field public final a:Lkotlin/reflect/jvm/internal/impl/b/a$b;

.field public final b:Lkotlin/reflect/jvm/internal/impl/b/b/a;

.field public final c:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;

.field public final d:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/w$a;

.field private final e:Lkotlin/reflect/jvm/internal/impl/descriptors/at;

.field private final f:Lkotlin/reflect/jvm/internal/impl/c/a;

.field private final g:Lkotlin/reflect/jvm/internal/impl/descriptors/y;

.field private final h:Lkotlin/reflect/jvm/internal/impl/descriptors/s;

.field private final i:Lkotlin/reflect/jvm/internal/impl/descriptors/e;

.field private final j:Lkotlin/reflect/jvm/internal/impl/resolve/e/i;

.field private final k:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor$DeserializedClassTypeConstructor;

.field private final l:Lkotlin/reflect/jvm/internal/impl/descriptors/ar;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/impl/descriptors/ar<",
            "Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor$a;",
            ">;"
        }
    .end annotation
.end field

.field private final m:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor$b;

.field private final n:Lkotlin/reflect/jvm/internal/impl/descriptors/k;

.field private final o:Lkotlin/reflect/jvm/internal/impl/f/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/impl/f/j<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/c;",
            ">;"
        }
    .end annotation
.end field

.field private final p:Lkotlin/reflect/jvm/internal/impl/f/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/impl/f/i<",
            "Ljava/util/Collection<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/c;",
            ">;>;"
        }
    .end annotation
.end field

.field private final q:Lkotlin/reflect/jvm/internal/impl/f/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/impl/f/j<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/d;",
            ">;"
        }
    .end annotation
.end field

.field private final r:Lkotlin/reflect/jvm/internal/impl/f/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/impl/f/i<",
            "Ljava/util/Collection<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/d;",
            ">;>;"
        }
    .end annotation
.end field

.field private final s:Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;Lkotlin/reflect/jvm/internal/impl/b/a$b;Lkotlin/reflect/jvm/internal/impl/b/b/c;Lkotlin/reflect/jvm/internal/impl/b/b/a;Lkotlin/reflect/jvm/internal/impl/descriptors/at;)V
    .locals 8

    const-string v0, "outerContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "classProto"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameResolver"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "metadataVersion"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sourceElement"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14096
    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;

    .line 15038
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;->a:Lkotlin/reflect/jvm/internal/impl/f/n;

    .line 15957
    iget v1, p2, Lkotlin/reflect/jvm/internal/impl/b/a$b;->c:I

    .line 44
    invoke-static {p3, v1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/u;->a(Lkotlin/reflect/jvm/internal/impl/b/b/c;I)Lkotlin/reflect/jvm/internal/impl/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/c/a;->c()Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v1

    .line 42
    invoke-direct {p0, v0, v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a;-><init>(Lkotlin/reflect/jvm/internal/impl/f/n;Lkotlin/reflect/jvm/internal/impl/c/e;)V

    .line 38
    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->a:Lkotlin/reflect/jvm/internal/impl/b/a$b;

    .line 40
    iput-object p4, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->b:Lkotlin/reflect/jvm/internal/impl/b/b/a;

    .line 41
    iput-object p5, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->e:Lkotlin/reflect/jvm/internal/impl/descriptors/at;

    .line 16957
    iget v0, p2, Lkotlin/reflect/jvm/internal/impl/b/a$b;->c:I

    .line 46
    invoke-static {p3, v0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/u;->a(Lkotlin/reflect/jvm/internal/impl/b/b/c;I)Lkotlin/reflect/jvm/internal/impl/c/a;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->f:Lkotlin/reflect/jvm/internal/impl/c/a;

    .line 48
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/x;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/x;

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/b/b/b;->d:Lkotlin/reflect/jvm/internal/impl/b/b/b$c;

    .line 17942
    iget v1, p2, Lkotlin/reflect/jvm/internal/impl/b/a$b;->b:I

    .line 48
    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/b/b/b$c;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/b/a$j;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/x;->a(Lkotlin/reflect/jvm/internal/impl/b/a$j;)Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->g:Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    .line 49
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/x;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/x;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/b/b/b;->c:Lkotlin/reflect/jvm/internal/impl/b/b/b$c;

    .line 18942
    iget v2, p2, Lkotlin/reflect/jvm/internal/impl/b/a$b;->b:I

    .line 49
    invoke-virtual {v1, v2}, Lkotlin/reflect/jvm/internal/impl/b/b/b$c;->b(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/b/a$w;

    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/y;->a(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/x;Lkotlin/reflect/jvm/internal/impl/b/a$w;)Lkotlin/reflect/jvm/internal/impl/descriptors/s;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->h:Lkotlin/reflect/jvm/internal/impl/descriptors/s;

    .line 50
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/x;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/x;

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/b/b/b;->e:Lkotlin/reflect/jvm/internal/impl/b/b/b$c;

    .line 19942
    iget v1, p2, Lkotlin/reflect/jvm/internal/impl/b/a$b;->b:I

    .line 50
    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/b/b/b$c;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/b/a$b$b;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/x;->a(Lkotlin/reflect/jvm/internal/impl/b/a$b$b;)Lkotlin/reflect/jvm/internal/impl/descriptors/e;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->i:Lkotlin/reflect/jvm/internal/impl/descriptors/e;

    .line 53
    move-object v2, p0

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    .line 19981
    iget-object v3, p2, Lkotlin/reflect/jvm/internal/impl/b/a$b;->e:Ljava/util/List;

    const-string v1, "classProto.typeParameterList"

    .line 53
    invoke-static {v3, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Lkotlin/reflect/jvm/internal/impl/b/b/g;

    .line 20301
    iget-object v1, p2, Lkotlin/reflect/jvm/internal/impl/b/a$b;->o:Lkotlin/reflect/jvm/internal/impl/b/a$s;

    const-string v4, "classProto.typeTable"

    .line 53
    invoke-static {v1, v4}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v5, v1}, Lkotlin/reflect/jvm/internal/impl/b/b/g;-><init>(Lkotlin/reflect/jvm/internal/impl/b/a$s;)V

    .line 54
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/b/b/i;->a:Lkotlin/reflect/jvm/internal/impl/b/b/i$a;

    .line 20350
    iget-object v1, p2, Lkotlin/reflect/jvm/internal/impl/b/a$b;->q:Lkotlin/reflect/jvm/internal/impl/b/a$v;

    const-string v4, "classProto.versionRequirementTable"

    .line 54
    invoke-static {v1, v4}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/b/b/i$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$v;)Lkotlin/reflect/jvm/internal/impl/b/b/i;

    move-result-object v6

    move-object v1, p1

    move-object v4, p3

    move-object v7, p4

    .line 52
    invoke-virtual/range {v1 .. v7}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/k;Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/b/b/c;Lkotlin/reflect/jvm/internal/impl/b/b/g;Lkotlin/reflect/jvm/internal/impl/b/b/i;Lkotlin/reflect/jvm/internal/impl/b/b/a;)Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;

    move-result-object p3

    iput-object p3, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->c:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;

    .line 57
    sget-object p4, Lkotlin/reflect/jvm/internal/impl/descriptors/e;->ENUM_CLASS:Lkotlin/reflect/jvm/internal/impl/descriptors/e;

    if-ne v0, p4, :cond_0

    new-instance p4, Lkotlin/reflect/jvm/internal/impl/resolve/e/l;

    .line 21096
    iget-object v1, p3, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;

    .line 22038
    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;->a:Lkotlin/reflect/jvm/internal/impl/f/n;

    .line 57
    move-object v2, p0

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    invoke-direct {p4, v1, v2}, Lkotlin/reflect/jvm/internal/impl/resolve/e/l;-><init>(Lkotlin/reflect/jvm/internal/impl/f/n;Lkotlin/reflect/jvm/internal/impl/descriptors/d;)V

    goto :goto_0

    :cond_0
    sget-object p4, Lkotlin/reflect/jvm/internal/impl/resolve/e/h$c;->a:Lkotlin/reflect/jvm/internal/impl/resolve/e/h$c;

    :goto_0
    check-cast p4, Lkotlin/reflect/jvm/internal/impl/resolve/e/i;

    iput-object p4, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->j:Lkotlin/reflect/jvm/internal/impl/resolve/e/i;

    .line 58
    new-instance p4, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor$DeserializedClassTypeConstructor;

    invoke-direct {p4, p0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor$DeserializedClassTypeConstructor;-><init>(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;)V

    iput-object p4, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->k:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor$DeserializedClassTypeConstructor;

    .line 61
    sget-object p4, Lkotlin/reflect/jvm/internal/impl/descriptors/ar;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/ar$a;

    move-object p4, p0

    check-cast p4, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    .line 22096
    iget-object v1, p3, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;

    .line 23038
    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;->a:Lkotlin/reflect/jvm/internal/impl/f/n;

    .line 23078
    iget-object v2, p3, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;

    .line 24054
    iget-object v2, v2, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;->q:Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeChecker;

    .line 61
    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeChecker;->getKotlinTypeRefiner()Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner;

    move-result-object v2

    new-instance v3, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor$f;

    invoke-direct {v3, p0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor$f;-><init>(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;)V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    invoke-static {p4, v1, v2, v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/ar$a;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/d;Lkotlin/reflect/jvm/internal/impl/f/n;Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner;Lkotlin/jvm/functions/Function1;)Lkotlin/reflect/jvm/internal/impl/descriptors/ar;

    move-result-object p4

    iput-object p4, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->l:Lkotlin/reflect/jvm/internal/impl/descriptors/ar;

    .line 64
    sget-object p4, Lkotlin/reflect/jvm/internal/impl/descriptors/e;->ENUM_CLASS:Lkotlin/reflect/jvm/internal/impl/descriptors/e;

    const/4 v1, 0x0

    if-ne v0, p4, :cond_1

    new-instance p4, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor$b;

    invoke-direct {p4, p0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor$b;-><init>(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;)V

    goto :goto_1

    :cond_1
    move-object p4, v1

    :goto_1
    iput-object p4, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->m:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor$b;

    .line 24080
    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->c:Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    .line 66
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->n:Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    .line 24096
    iget-object p4, p3, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;

    .line 25038
    iget-object p4, p4, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;->a:Lkotlin/reflect/jvm/internal/impl/f/n;

    .line 67
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor$g;

    invoke-direct {v0, p0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor$g;-><init>(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-interface {p4, v0}, Lkotlin/reflect/jvm/internal/impl/f/n;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/reflect/jvm/internal/impl/f/j;

    move-result-object p4

    iput-object p4, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->o:Lkotlin/reflect/jvm/internal/impl/f/j;

    .line 25096
    iget-object p4, p3, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;

    .line 26038
    iget-object p4, p4, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;->a:Lkotlin/reflect/jvm/internal/impl/f/n;

    .line 68
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor$e;

    invoke-direct {v0, p0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor$e;-><init>(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-interface {p4, v0}, Lkotlin/reflect/jvm/internal/impl/f/n;->a(Lkotlin/jvm/functions/Function0;)Lkotlin/reflect/jvm/internal/impl/f/i;

    move-result-object p4

    iput-object p4, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->p:Lkotlin/reflect/jvm/internal/impl/f/i;

    .line 26096
    iget-object p4, p3, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;

    .line 27038
    iget-object p4, p4, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;->a:Lkotlin/reflect/jvm/internal/impl/f/n;

    .line 69
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor$d;

    invoke-direct {v0, p0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor$d;-><init>(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-interface {p4, v0}, Lkotlin/reflect/jvm/internal/impl/f/n;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/reflect/jvm/internal/impl/f/j;

    move-result-object p4

    iput-object p4, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->q:Lkotlin/reflect/jvm/internal/impl/f/j;

    .line 27096
    iget-object p4, p3, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;

    .line 28038
    iget-object p4, p4, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;->a:Lkotlin/reflect/jvm/internal/impl/f/n;

    .line 70
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor$h;

    invoke-direct {v0, p0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor$h;-><init>(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-interface {p4, v0}, Lkotlin/reflect/jvm/internal/impl/f/n;->a(Lkotlin/jvm/functions/Function0;)Lkotlin/reflect/jvm/internal/impl/f/i;

    move-result-object p4

    iput-object p4, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->r:Lkotlin/reflect/jvm/internal/impl/f/i;

    .line 72
    new-instance p4, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/w$a;

    .line 28079
    iget-object v4, p3, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->b:Lkotlin/reflect/jvm/internal/impl/b/b/c;

    .line 28081
    iget-object v5, p3, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->d:Lkotlin/reflect/jvm/internal/impl/b/b/g;

    .line 74
    instance-of v0, p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;

    if-eqz v0, :cond_2

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;

    goto :goto_2

    :cond_2
    move-object p1, v1

    :goto_2
    if-nez p1, :cond_3

    goto :goto_3

    :cond_3
    iget-object v1, p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->d:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/w$a;

    :goto_3
    move-object v7, v1

    move-object v2, p4

    move-object v3, p2

    move-object v6, p5

    .line 72
    invoke-direct/range {v2 .. v7}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/w$a;-><init>(Lkotlin/reflect/jvm/internal/impl/b/a$b;Lkotlin/reflect/jvm/internal/impl/b/b/c;Lkotlin/reflect/jvm/internal/impl/b/b/g;Lkotlin/reflect/jvm/internal/impl/descriptors/at;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/w$a;)V

    iput-object p4, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->d:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/w$a;

    .line 81
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/b/b/b;->b:Lkotlin/reflect/jvm/internal/impl/b/b/b$a;

    .line 28942
    iget p2, p2, Lkotlin/reflect/jvm/internal/impl/b/a$b;->b:I

    .line 81
    invoke-virtual {p1, p2}, Lkotlin/reflect/jvm/internal/impl/b/b/b$a;->a(I)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_4

    .line 82
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/a/g$a;

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/descriptors/a/g$a;->a()Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;

    move-result-object p1

    goto :goto_4

    .line 83
    :cond_4
    new-instance p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/m;

    .line 29096
    iget-object p2, p3, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;

    .line 30038
    iget-object p2, p2, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;->a:Lkotlin/reflect/jvm/internal/impl/f/n;

    .line 83
    new-instance p3, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor$c;

    invoke-direct {p3, p0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor$c;-><init>(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;)V

    check-cast p3, Lkotlin/jvm/functions/Function0;

    invoke-direct {p1, p2, p3}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/m;-><init>(Lkotlin/reflect/jvm/internal/impl/f/n;Lkotlin/jvm/functions/Function0;)V

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;

    .line 81
    :goto_4
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->s:Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;

    return-void
.end method

.method public static final synthetic a(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;)Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor$DeserializedClassTypeConstructor;
    .locals 0

    .line 36
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->k:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor$DeserializedClassTypeConstructor;

    return-object p0
.end method

.method public static final synthetic b(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;)Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor$b;
    .locals 0

    .line 36
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->m:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor$b;

    return-object p0
.end method

.method public static final synthetic c(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;)Lkotlin/reflect/jvm/internal/impl/c/a;
    .locals 0

    .line 36
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->f:Lkotlin/reflect/jvm/internal/impl/c/a;

    return-object p0
.end method

.method public static final synthetic d(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;)Lkotlin/reflect/jvm/internal/impl/descriptors/c;
    .locals 6

    .line 39121
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->i:Lkotlin/reflect/jvm/internal/impl/descriptors/e;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/e;->isSingleton()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 39122
    move-object v0, p0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/descriptors/at;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/at;

    if-nez v1, :cond_0

    const/16 v2, 0x15

    invoke-static {v2}, Lkotlin/reflect/jvm/internal/impl/resolve/c;->a(I)V

    .line 40141
    :cond_0
    new-instance v2, Lkotlin/reflect/jvm/internal/impl/resolve/c$a;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lkotlin/reflect/jvm/internal/impl/resolve/c$a;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/d;Lkotlin/reflect/jvm/internal/impl/descriptors/at;Z)V

    .line 39123
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->getDefaultType()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    invoke-virtual {v2, p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/d;->setReturnType(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)V

    .line 39122
    check-cast v2, Lkotlin/reflect/jvm/internal/impl/descriptors/c;

    return-object v2

    .line 39127
    :cond_1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->a:Lkotlin/reflect/jvm/internal/impl/b/a$b;

    .line 41097
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->i:Ljava/util/List;

    const-string v1, "classProto.constructorList"

    .line 39127
    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    .line 39379
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/b/a$c;

    .line 39127
    sget-object v5, Lkotlin/reflect/jvm/internal/impl/b/b/b;->l:Lkotlin/reflect/jvm/internal/impl/b/b/b$a;

    .line 41525
    iget v4, v4, Lkotlin/reflect/jvm/internal/impl/b/a$c;->b:I

    .line 39127
    invoke-virtual {v5, v4}, Lkotlin/reflect/jvm/internal/impl/b/b/b$a;->a(I)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    xor-int/2addr v4, v2

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_3
    move-object v1, v3

    :goto_0
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/b/a$c;

    if-nez v1, :cond_4

    return-object v3

    .line 42052
    :cond_4
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->c:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;

    .line 42094
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->h:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t;

    .line 39128
    invoke-virtual {p0, v1, v2}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t;->a(Lkotlin/reflect/jvm/internal/impl/b/a$c;Z)Lkotlin/reflect/jvm/internal/impl/descriptors/c;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic e(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;)Ljava/util/Collection;
    .locals 5

    .line 42139
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->a:Lkotlin/reflect/jvm/internal/impl/b/a$b;

    .line 43097
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->i:Ljava/util/List;

    const-string v1, "classProto.constructorList"

    .line 42139
    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    .line 42381
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 42382
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/b/a$c;

    .line 42139
    sget-object v4, Lkotlin/reflect/jvm/internal/impl/b/b/b;->l:Lkotlin/reflect/jvm/internal/impl/b/b/b$a;

    .line 43525
    iget v3, v3, Lkotlin/reflect/jvm/internal/impl/b/a$c;->b:I

    .line 42139
    invoke-virtual {v4, v3}, Lkotlin/reflect/jvm/internal/impl/b/b/b$a;->a(I)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "IS_SECONDARY.get(it.flags)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 42383
    :cond_1
    check-cast v1, Ljava/util/List;

    .line 42381
    check-cast v1, Ljava/lang/Iterable;

    .line 42384
    new-instance v0, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v1, v2}, Lkotlin/a/n;->a(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 42385
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 42386
    check-cast v2, Lkotlin/reflect/jvm/internal/impl/b/a$c;

    .line 44052
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->c:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;

    .line 44094
    iget-object v3, v3, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->h:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t;

    const-string v4, "it"

    .line 42140
    invoke-static {v2, v4}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t;->a(Lkotlin/reflect/jvm/internal/impl/b/a$c;Z)Lkotlin/reflect/jvm/internal/impl/descriptors/c;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 42387
    :cond_2
    check-cast v0, Ljava/util/List;

    .line 42135
    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->getUnsubstitutedPrimaryConstructor()Lkotlin/reflect/jvm/internal/impl/descriptors/c;

    move-result-object v1

    invoke-static {v1}, Lkotlin/a/n;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v0, v1}, Lkotlin/a/n;->b(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 42136
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->c:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;

    .line 45078
    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;

    .line 46051
    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;->n:Lkotlin/reflect/jvm/internal/impl/descriptors/b/a;

    .line 42136
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    invoke-interface {v1, p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/b/a;->b(Lkotlin/reflect/jvm/internal/impl/descriptors/d;)Ljava/util/Collection;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    .line 42135
    invoke-static {v0, p0}, Lkotlin/a/n;->b(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    return-object p0
.end method

.method public static final synthetic f(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;)Lkotlin/reflect/jvm/internal/impl/descriptors/d;
    .locals 2

    .line 46146
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->a:Lkotlin/reflect/jvm/internal/impl/b/a$b;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$b;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46148
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->c:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;

    .line 47079
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->b:Lkotlin/reflect/jvm/internal/impl/b/b/c;

    .line 46148
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->a:Lkotlin/reflect/jvm/internal/impl/b/a$b;

    .line 47972
    iget v1, v1, Lkotlin/reflect/jvm/internal/impl/b/a$b;->d:I

    .line 46148
    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/u;->b(Lkotlin/reflect/jvm/internal/impl/b/b/c;I)Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v0

    .line 46149
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->a()Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor$a;

    move-result-object p0

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/a/a/d;->FROM_DESERIALIZATION:Lkotlin/reflect/jvm/internal/impl/a/a/d;

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/a/a/b;

    invoke-virtual {p0, v0, v1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor$a;->getContributedClassifier(Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/a/a/b;)Lkotlin/reflect/jvm/internal/impl/descriptors/g;

    move-result-object p0

    instance-of v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    if-eqz v0, :cond_0

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final synthetic g(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;)Ljava/util/Collection;
    .locals 6

    .line 48158
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->g:Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/descriptors/y;->SEALED:Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    if-eq v0, v1, :cond_0

    .line 49071
    sget-object p0, Lkotlin/a/z;->a:Lkotlin/a/z;

    check-cast p0, Ljava/util/List;

    .line 48158
    check-cast p0, Ljava/util/Collection;

    return-object p0

    .line 48160
    :cond_0
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->a:Lkotlin/reflect/jvm/internal/impl/b/a$b;

    .line 49273
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/b/a$b;->n:Ljava/util/List;

    const-string v1, "fqNames"

    .line 48161
    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    .line 48162
    check-cast v0, Ljava/lang/Iterable;

    .line 48388
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 48397
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 48396
    check-cast v2, Ljava/lang/Integer;

    .line 50052
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->c:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;

    .line 50053
    iget-object v3, v3, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;

    .line 50054
    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->c:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;

    .line 50055
    iget-object v4, v4, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->b:Lkotlin/reflect/jvm/internal/impl/b/b/c;

    const-string v5, "index"

    .line 48163
    invoke-static {v2, v5}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v4, v2}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/u;->a(Lkotlin/reflect/jvm/internal/impl/b/b/c;I)Lkotlin/reflect/jvm/internal/impl/c/a;

    move-result-object v2

    invoke-virtual {v3, v2}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;->a(Lkotlin/reflect/jvm/internal/impl/c/a;)Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 48396
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 48400
    :cond_2
    check-cast v1, Ljava/util/List;

    .line 48388
    check-cast v1, Ljava/util/Collection;

    return-object v1

    .line 48168
    :cond_3
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/resolve/a;->a:Lkotlin/reflect/jvm/internal/impl/resolve/a;

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/a;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/d;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor$a;
    .locals 2

    .line 63
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->l:Lkotlin/reflect/jvm/internal/impl/descriptors/ar;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->c:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;

    .line 30078
    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;

    .line 31054
    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;->q:Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeChecker;

    .line 63
    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeChecker;->getKotlinTypeRefiner()Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/ar;->a(Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner;)Lkotlin/reflect/jvm/internal/impl/resolve/e/h;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor$a;

    return-object v0
.end method

.method public final getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;
    .locals 1

    .line 80
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->s:Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;

    return-object v0
.end method

.method public final getCompanionObjectDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/d;
    .locals 1

    .line 152
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->q:Lkotlin/reflect/jvm/internal/impl/f/j;

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/f/j;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    return-object v0
.end method

.method public final getConstructors()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/c;",
            ">;"
        }
    .end annotation

    .line 143
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->p:Lkotlin/reflect/jvm/internal/impl/f/i;

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/f/i;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    return-object v0
.end method

.method public final getContainingDeclaration()Lkotlin/reflect/jvm/internal/impl/descriptors/k;
    .locals 1

    .line 87
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->n:Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    return-object v0
.end method

.method public final getDeclaredTypeParameters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;",
            ">;"
        }
    .end annotation

    .line 178
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->c:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;

    .line 39088
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->g:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/aa;

    .line 178
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/aa;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getKind()Lkotlin/reflect/jvm/internal/impl/descriptors/e;
    .locals 1

    .line 91
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->i:Lkotlin/reflect/jvm/internal/impl/descriptors/e;

    return-object v0
.end method

.method public final getModality()Lkotlin/reflect/jvm/internal/impl/descriptors/y;
    .locals 1

    .line 93
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->g:Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    return-object v0
.end method

.method public final getSealedSubclasses()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/d;",
            ">;"
        }
    .end annotation

    .line 171
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->r:Lkotlin/reflect/jvm/internal/impl/f/i;

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/f/i;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    return-object v0
.end method

.method public final getSource()Lkotlin/reflect/jvm/internal/impl/descriptors/at;
    .locals 1

    .line 176
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->e:Lkotlin/reflect/jvm/internal/impl/descriptors/at;

    return-object v0
.end method

.method public final bridge synthetic getStaticScope()Lkotlin/reflect/jvm/internal/impl/resolve/e/h;
    .locals 1

    .line 39116
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->j:Lkotlin/reflect/jvm/internal/impl/resolve/e/i;

    .line 36
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/resolve/e/h;

    return-object v0
.end method

.method public final getTypeConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;
    .locals 1

    .line 89
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->k:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor$DeserializedClassTypeConstructor;

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    return-object v0
.end method

.method public final getUnsubstitutedMemberScope(Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner;)Lkotlin/reflect/jvm/internal/impl/resolve/e/h;
    .locals 1

    const-string v0, "kotlinTypeRefiner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->l:Lkotlin/reflect/jvm/internal/impl/descriptors/ar;

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/ar;->a(Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner;)Lkotlin/reflect/jvm/internal/impl/resolve/e/h;

    move-result-object p1

    return-object p1
.end method

.method public final getUnsubstitutedPrimaryConstructor()Lkotlin/reflect/jvm/internal/impl/descriptors/c;
    .locals 1

    .line 132
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->o:Lkotlin/reflect/jvm/internal/impl/f/j;

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/f/j;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/c;

    return-object v0
.end method

.method public final getVisibility()Lkotlin/reflect/jvm/internal/impl/descriptors/s;
    .locals 1

    .line 95
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->h:Lkotlin/reflect/jvm/internal/impl/descriptors/s;

    return-object v0
.end method

.method public final isActual()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final isCompanionObject()Z
    .locals 2

    .line 118
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/b/b/b;->e:Lkotlin/reflect/jvm/internal/impl/b/b/b$c;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->a:Lkotlin/reflect/jvm/internal/impl/b/a$b;

    .line 38942
    iget v1, v1, Lkotlin/reflect/jvm/internal/impl/b/a$b;->b:I

    .line 118
    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/b/b/b$c;->b(I)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/b/a$b$b;->COMPANION_OBJECT:Lkotlin/reflect/jvm/internal/impl/b/a$b$b;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isData()Z
    .locals 2

    .line 99
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/b/b/b;->g:Lkotlin/reflect/jvm/internal/impl/b/b/b$a;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->a:Lkotlin/reflect/jvm/internal/impl/b/a$b;

    .line 32942
    iget v1, v1, Lkotlin/reflect/jvm/internal/impl/b/a$b;->b:I

    .line 99
    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/b/b/b$a;->a(I)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "IS_DATA.get(classProto.flags)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final isExpect()Z
    .locals 2

    .line 103
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/b/b/b;->i:Lkotlin/reflect/jvm/internal/impl/b/b/b$a;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->a:Lkotlin/reflect/jvm/internal/impl/b/a$b;

    .line 34942
    iget v1, v1, Lkotlin/reflect/jvm/internal/impl/b/a$b;->b:I

    .line 103
    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/b/b/b$a;->a(I)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "IS_EXPECT_CLASS.get(classProto.flags)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final isExternal()Z
    .locals 2

    .line 107
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/b/b/b;->h:Lkotlin/reflect/jvm/internal/impl/b/b/b$a;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->a:Lkotlin/reflect/jvm/internal/impl/b/a$b;

    .line 35942
    iget v1, v1, Lkotlin/reflect/jvm/internal/impl/b/a$b;->b:I

    .line 107
    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/b/b/b$a;->a(I)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "IS_EXTERNAL_CLASS.get(classProto.flags)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final isFun()Z
    .locals 2

    .line 109
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/b/b/b;->k:Lkotlin/reflect/jvm/internal/impl/b/b/b$a;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->a:Lkotlin/reflect/jvm/internal/impl/b/a$b;

    .line 36942
    iget v1, v1, Lkotlin/reflect/jvm/internal/impl/b/a$b;->b:I

    .line 109
    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/b/b/b$a;->a(I)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "IS_FUN_INTERFACE.get(classProto.flags)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final isInline()Z
    .locals 5

    .line 101
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/b/b/b;->j:Lkotlin/reflect/jvm/internal/impl/b/b/b$a;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->a:Lkotlin/reflect/jvm/internal/impl/b/a$b;

    .line 33942
    iget v1, v1, Lkotlin/reflect/jvm/internal/impl/b/a$b;->b:I

    .line 101
    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/b/b/b$a;->a(I)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "IS_INLINE_CLASS.get(classProto.flags)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->b:Lkotlin/reflect/jvm/internal/impl/b/b/a;

    .line 34055
    iget v2, v0, Lkotlin/reflect/jvm/internal/impl/b/b/a;->e:I

    const/4 v3, 0x1

    if-gtz v2, :cond_0

    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    .line 34056
    :cond_0
    iget v2, v0, Lkotlin/reflect/jvm/internal/impl/b/b/a;->e:I

    if-gt v2, v3, :cond_2

    .line 34058
    iget v2, v0, Lkotlin/reflect/jvm/internal/impl/b/b/a;->f:I

    const/4 v4, 0x4

    if-ge v2, v4, :cond_1

    goto :goto_0

    .line 34059
    :cond_1
    iget v2, v0, Lkotlin/reflect/jvm/internal/impl/b/b/a;->f:I

    if-gt v2, v4, :cond_2

    .line 34061
    iget v0, v0, Lkotlin/reflect/jvm/internal/impl/b/b/a;->g:I

    if-gt v0, v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_3

    return v3

    :cond_3
    return v1
.end method

.method public final isInner()Z
    .locals 2

    .line 97
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/b/b/b;->f:Lkotlin/reflect/jvm/internal/impl/b/b/b$a;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->a:Lkotlin/reflect/jvm/internal/impl/b/a$b;

    .line 31942
    iget v1, v1, Lkotlin/reflect/jvm/internal/impl/b/a$b;->b:I

    .line 97
    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/b/b/b$a;->a(I)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "IS_INNER.get(classProto.flags)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final isValue()Z
    .locals 4

    .line 111
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/b/b/b;->j:Lkotlin/reflect/jvm/internal/impl/b/b/b$a;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->a:Lkotlin/reflect/jvm/internal/impl/b/a$b;

    .line 37942
    iget v1, v1, Lkotlin/reflect/jvm/internal/impl/b/a$b;->b:I

    .line 111
    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/b/b/b$a;->a(I)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "IS_INLINE_CLASS.get(classProto.flags)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->b:Lkotlin/reflect/jvm/internal/impl/b/b/a;

    const/4 v1, 0x4

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1, v2}, Lkotlin/reflect/jvm/internal/impl/b/b/a;->a(III)Z

    move-result v0

    if-eqz v0, :cond_0

    return v3

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "deserialized "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->isExpect()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "expect "

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->getName()Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

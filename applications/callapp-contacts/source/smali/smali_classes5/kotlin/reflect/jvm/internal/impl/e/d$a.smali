.class final Lkotlin/reflect/jvm/internal/impl/e/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/descriptors/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/e/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/e/d$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/reflect/jvm/internal/impl/descriptors/m<",
        "Lkotlin/v;",
        "Ljava/lang/StringBuilder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lkotlin/reflect/jvm/internal/impl/e/d;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/e/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1067
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/e/d$a;->a:Lkotlin/reflect/jvm/internal/impl/e/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a(Lkotlin/reflect/jvm/internal/impl/descriptors/am;Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 2

    .line 1089
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/e/d$a;->a:Lkotlin/reflect/jvm/internal/impl/e/d;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/e/d;->e()Lkotlin/reflect/jvm/internal/impl/e/l;

    move-result-object v0

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/e/d$a$a;->a:[I

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/e/l;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 p3, 0x2

    if-eq v0, p3, :cond_0

    goto :goto_0

    .line 1096
    :cond_0
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/w;

    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/e/d$a;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/w;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void

    .line 1091
    :cond_1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/e/d$a;->a:Lkotlin/reflect/jvm/internal/impl/e/d;

    invoke-static {v0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Lkotlin/reflect/jvm/internal/impl/e/d;Lkotlin/reflect/jvm/internal/impl/descriptors/am;Ljava/lang/StringBuilder;)V

    const-string v0, " for "

    .line 1092
    invoke-static {p3, v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1093
    iget-object p3, p0, Lkotlin/reflect/jvm/internal/impl/e/d$a;->a:Lkotlin/reflect/jvm/internal/impl/e/d;

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/am;->b()Lkotlin/reflect/jvm/internal/impl/descriptors/an;

    move-result-object p1

    const-string v0, "descriptor.correspondingProperty"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3, p1, p2}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Lkotlin/reflect/jvm/internal/impl/e/d;Lkotlin/reflect/jvm/internal/impl/descriptors/an;Ljava/lang/StringBuilder;)V

    return-void
.end method

.method private a(Lkotlin/reflect/jvm/internal/impl/descriptors/w;Ljava/lang/StringBuilder;)V
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "builder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1104
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/e/d$a;->a:Lkotlin/reflect/jvm/internal/impl/e/d;

    invoke-static {v0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Lkotlin/reflect/jvm/internal/impl/e/d;Lkotlin/reflect/jvm/internal/impl/descriptors/w;Ljava/lang/StringBuilder;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1067
    check-cast p2, Ljava/lang/StringBuilder;

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "builder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2116
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/e/d$a;->a:Lkotlin/reflect/jvm/internal/impl/e/d;

    invoke-static {v0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Lkotlin/reflect/jvm/internal/impl/e/d;Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;Ljava/lang/StringBuilder;)V

    .line 1067
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

.method public final synthetic a(Lkotlin/reflect/jvm/internal/impl/descriptors/ab;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1067
    check-cast p2, Ljava/lang/StringBuilder;

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "builder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2128
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/e/d$a;->a:Lkotlin/reflect/jvm/internal/impl/e/d;

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    invoke-static {v0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Lkotlin/reflect/jvm/internal/impl/e/d;Lkotlin/reflect/jvm/internal/impl/descriptors/k;Ljava/lang/StringBuilder;)V

    .line 1067
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

.method public final synthetic a(Lkotlin/reflect/jvm/internal/impl/descriptors/ae;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1067
    check-cast p2, Ljava/lang/StringBuilder;

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "builder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2120
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/e/d$a;->a:Lkotlin/reflect/jvm/internal/impl/e/d;

    invoke-static {v0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Lkotlin/reflect/jvm/internal/impl/e/d;Lkotlin/reflect/jvm/internal/impl/descriptors/ae;Ljava/lang/StringBuilder;)V

    .line 1067
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

.method public final synthetic a(Lkotlin/reflect/jvm/internal/impl/descriptors/aj;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1067
    check-cast p2, Ljava/lang/StringBuilder;

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "builder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2124
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/e/d$a;->a:Lkotlin/reflect/jvm/internal/impl/e/d;

    invoke-static {v0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Lkotlin/reflect/jvm/internal/impl/e/d;Lkotlin/reflect/jvm/internal/impl/descriptors/aj;Ljava/lang/StringBuilder;)V

    .line 1067
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

.method public final synthetic a(Lkotlin/reflect/jvm/internal/impl/descriptors/an;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1067
    check-cast p2, Ljava/lang/StringBuilder;

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "builder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2077
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/e/d$a;->a:Lkotlin/reflect/jvm/internal/impl/e/d;

    invoke-static {v0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Lkotlin/reflect/jvm/internal/impl/e/d;Lkotlin/reflect/jvm/internal/impl/descriptors/an;Ljava/lang/StringBuilder;)V

    .line 1067
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

.method public final synthetic a(Lkotlin/reflect/jvm/internal/impl/descriptors/ao;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1067
    check-cast p2, Ljava/lang/StringBuilder;

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "builder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2081
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/am;

    const-string v0, "getter"

    invoke-direct {p0, p1, p2, v0}, Lkotlin/reflect/jvm/internal/impl/e/d$a;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/am;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1067
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

.method public final synthetic a(Lkotlin/reflect/jvm/internal/impl/descriptors/ap;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1067
    check-cast p2, Ljava/lang/StringBuilder;

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "builder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2085
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/am;

    const-string v0, "setter"

    invoke-direct {p0, p1, p2, v0}, Lkotlin/reflect/jvm/internal/impl/e/d$a;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/am;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1067
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

.method public final synthetic a(Lkotlin/reflect/jvm/internal/impl/descriptors/aq;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1067
    check-cast p2, Ljava/lang/StringBuilder;

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "builder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2108
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/aq;->getName()Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1067
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

.method public final synthetic a(Lkotlin/reflect/jvm/internal/impl/descriptors/ax;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1067
    check-cast p2, Ljava/lang/StringBuilder;

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "builder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2140
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/e/d$a;->a:Lkotlin/reflect/jvm/internal/impl/e/d;

    invoke-static {v0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Lkotlin/reflect/jvm/internal/impl/e/d;Lkotlin/reflect/jvm/internal/impl/descriptors/ax;Ljava/lang/StringBuilder;)V

    .line 1067
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

.method public final synthetic a(Lkotlin/reflect/jvm/internal/impl/descriptors/ba;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1067
    check-cast p2, Ljava/lang/StringBuilder;

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "builder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2069
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/e/d$a;->a:Lkotlin/reflect/jvm/internal/impl/e/d;

    invoke-static {v0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Lkotlin/reflect/jvm/internal/impl/e/d;Lkotlin/reflect/jvm/internal/impl/descriptors/ba;Ljava/lang/StringBuilder;)V

    .line 1067
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

.method public final synthetic a(Lkotlin/reflect/jvm/internal/impl/descriptors/d;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1067
    check-cast p2, Ljava/lang/StringBuilder;

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "builder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2136
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/e/d$a;->a:Lkotlin/reflect/jvm/internal/impl/e/d;

    invoke-static {v0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Lkotlin/reflect/jvm/internal/impl/e/d;Lkotlin/reflect/jvm/internal/impl/descriptors/d;Ljava/lang/StringBuilder;)V

    .line 1067
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

.method public final synthetic a(Lkotlin/reflect/jvm/internal/impl/descriptors/j;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1067
    check-cast p2, Ljava/lang/StringBuilder;

    const-string v0, "constructorDescriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "builder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2112
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/e/d$a;->a:Lkotlin/reflect/jvm/internal/impl/e/d;

    invoke-static {v0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Lkotlin/reflect/jvm/internal/impl/e/d;Lkotlin/reflect/jvm/internal/impl/descriptors/j;Ljava/lang/StringBuilder;)V

    .line 1067
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

.method public final bridge synthetic a(Lkotlin/reflect/jvm/internal/impl/descriptors/w;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1067
    check-cast p2, Ljava/lang/StringBuilder;

    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/e/d$a;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/w;Ljava/lang/StringBuilder;)V

    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

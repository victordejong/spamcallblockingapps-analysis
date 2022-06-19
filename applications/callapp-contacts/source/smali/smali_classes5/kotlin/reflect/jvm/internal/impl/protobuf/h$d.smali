.class final Lkotlin/reflect/jvm/internal/impl/protobuf/h$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/protobuf/g$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/protobuf/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/reflect/jvm/internal/impl/protobuf/g$a<",
        "Lkotlin/reflect/jvm/internal/impl/protobuf/h$d;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Lkotlin/reflect/jvm/internal/impl/protobuf/j$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/impl/protobuf/j$b<",
            "*>;"
        }
    .end annotation
.end field

.field final b:I

.field final c:Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;

.field final d:Z

.field final e:Z


# direct methods
.method constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/j$b;ILkotlin/reflect/jvm/internal/impl/protobuf/x$a;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/protobuf/j$b<",
            "*>;I",
            "Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;",
            "ZZ)V"
        }
    .end annotation

    .line 679
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 680
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/h$d;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/j$b;

    .line 681
    iput p2, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/h$d;->b:I

    .line 682
    iput-object p3, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/h$d;->c:Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;

    .line 683
    iput-boolean p4, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/h$d;->d:Z

    .line 684
    iput-boolean p5, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/h$d;->e:Z

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 694
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/h$d;->b:I

    return v0
.end method

.method public final a(Lkotlin/reflect/jvm/internal/impl/protobuf/p$a;Lkotlin/reflect/jvm/internal/impl/protobuf/p;)Lkotlin/reflect/jvm/internal/impl/protobuf/p$a;
    .locals 0

    .line 720
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;

    check-cast p2, Lkotlin/reflect/jvm/internal/impl/protobuf/h;

    invoke-virtual {p1, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/h;)Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;

    move-result-object p1

    return-object p1
.end method

.method public final b()Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;
    .locals 1

    .line 698
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/h$d;->c:Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;

    return-object v0
.end method

.method public final c()Lkotlin/reflect/jvm/internal/impl/protobuf/x$b;
    .locals 1

    .line 702
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/h$d;->c:Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;->getJavaType()Lkotlin/reflect/jvm/internal/impl/protobuf/x$b;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .line 671
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/protobuf/h$d;

    .line 1725
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/h$d;->b:I

    iget p1, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/h$d;->b:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public final d()Z
    .locals 1

    .line 706
    iget-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/h$d;->d:Z

    return v0
.end method

.method public final e()Z
    .locals 1

    .line 710
    iget-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/h$d;->e:Z

    return v0
.end method

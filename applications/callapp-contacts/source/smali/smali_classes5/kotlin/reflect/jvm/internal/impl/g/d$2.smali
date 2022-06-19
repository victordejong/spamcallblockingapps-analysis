.class final Lkotlin/reflect/jvm/internal/impl/g/d$2;
.super Lkotlin/jvm/internal/r;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/impl/g/d;-><init>(Lkotlin/h/l;[Lkotlin/reflect/jvm/internal/impl/g/b;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final a:Lkotlin/reflect/jvm/internal/impl/g/d$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/g/d$2;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/g/d$2;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/g/d$2;->a:Lkotlin/reflect/jvm/internal/impl/g/d$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/r;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 151
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/w;

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

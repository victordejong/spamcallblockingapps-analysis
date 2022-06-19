.class final Lkotlin/reflect/jvm/internal/impl/f/f$2;
.super Lkotlin/reflect/jvm/internal/impl/f/f$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/impl/f/f;->a(Lkotlin/jvm/functions/Function0;Ljava/lang/Object;)Lkotlin/reflect/jvm/internal/impl/f/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/reflect/jvm/internal/impl/f/f$g<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Lkotlin/reflect/jvm/internal/impl/f/f;


# direct methods
.method constructor <init>(Lkotlin/reflect/jvm/internal/impl/f/f;Lkotlin/reflect/jvm/internal/impl/f/f;Lkotlin/jvm/functions/Function0;Ljava/lang/Object;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/f/f$2;->b:Lkotlin/reflect/jvm/internal/impl/f/f;

    iput-object p4, p0, Lkotlin/reflect/jvm/internal/impl/f/f$2;->a:Ljava/lang/Object;

    invoke-direct {p0, p2, p3}, Lkotlin/reflect/jvm/internal/impl/f/f$g;-><init>(Lkotlin/reflect/jvm/internal/impl/f/f;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method


# virtual methods
.method protected final a(Z)Lkotlin/reflect/jvm/internal/impl/f/f$l;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lkotlin/reflect/jvm/internal/impl/f/f$l<",
            "TT;>;"
        }
    .end annotation

    .line 206
    iget-object p1, p0, Lkotlin/reflect/jvm/internal/impl/f/f$2;->a:Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/f/f$l;->a(Ljava/lang/Object;)Lkotlin/reflect/jvm/internal/impl/f/f$l;

    move-result-object p1

    return-object p1
.end method

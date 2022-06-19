.class public final Lscala/util/DynamicVariable$$anon$1;
.super Ljava/lang/InheritableThreadLocal;
.source "DynamicVariable.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/util/DynamicVariable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/InheritableThreadLocal<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final synthetic $outer:Lscala/util/DynamicVariable;


# direct methods
.method public constructor <init>(Lscala/util/DynamicVariable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/util/DynamicVariable<",
            "TT;>;)V"
        }
    .end annotation

    .line 41
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/util/DynamicVariable$$anon$1;->$outer:Lscala/util/DynamicVariable;

    invoke-direct {p0}, Ljava/lang/InheritableThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method public initialValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lscala/util/DynamicVariable$$anon$1;->$outer:Lscala/util/DynamicVariable;

    iget-object v0, v0, Lscala/util/DynamicVariable;->scala$util$DynamicVariable$$init:Ljava/lang/Object;

    return-object v0
.end method

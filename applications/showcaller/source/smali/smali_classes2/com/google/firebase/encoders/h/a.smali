.class final synthetic Lcom/google/firebase/encoders/h/a;
.super Ljava/lang/Object;
.source "JsonDataEncoderBuilder.java"

# interfaces
.implements Lcom/google/firebase/encoders/c;


# static fields
.field private static final a:Lcom/google/firebase/encoders/h/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/encoders/h/a;

    invoke-direct {v0}, Lcom/google/firebase/encoders/h/a;-><init>()V

    sput-object v0, Lcom/google/firebase/encoders/h/a;->a:Lcom/google/firebase/encoders/h/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Lcom/google/firebase/encoders/c;
    .locals 1

    sget-object v0, Lcom/google/firebase/encoders/h/a;->a:Lcom/google/firebase/encoders/h/a;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/google/firebase/encoders/d;

    invoke-static {p1, p2}, Lcom/google/firebase/encoders/h/d;->i(Ljava/lang/Object;Lcom/google/firebase/encoders/d;)V

    return-void
.end method

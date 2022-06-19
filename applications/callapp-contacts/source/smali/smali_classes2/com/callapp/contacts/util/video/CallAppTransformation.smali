.class public Lcom/callapp/contacts/util/video/CallAppTransformation;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/util/video/CallAppTransformation$TransformationBuilder;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "CallAppTransformation"

.field private static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v0, "rotation-degrees"

    sput-object v0, Lcom/callapp/contacts/util/video/CallAppTransformation;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 35
    sget-object v0, Lcom/callapp/contacts/util/video/CallAppTransformation;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .line 35
    sget-object v0, Lcom/callapp/contacts/util/video/CallAppTransformation;->b:Ljava/lang/String;

    return-object v0
.end method

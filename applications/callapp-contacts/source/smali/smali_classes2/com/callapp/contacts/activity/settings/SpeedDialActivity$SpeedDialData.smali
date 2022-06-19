.class public final Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/settings/SpeedDialActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SpeedDialData"
.end annotation


# instance fields
.field private final a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 291
    iput p1, p0, Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialData;->a:I

    .line 292
    iput-object p2, p0, Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialData;->b:Ljava/lang/String;

    .line 293
    iput-object p3, p0, Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialData;->c:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialData;)Ljava/lang/String;
    .locals 0

    .line 265
    iget-object p0, p0, Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialData;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialData;)Ljava/lang/String;
    .locals 0

    .line 265
    iget-object p0, p0, Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialData;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialData;)I
    .locals 0

    .line 265
    iget p0, p0, Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialData;->a:I

    return p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 310
    :cond_1
    instance-of v2, p1, Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialData;

    if-nez v2, :cond_2

    return v1

    .line 312
    :cond_2
    check-cast p1, Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialData;

    .line 313
    iget v2, p0, Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialData;->a:I

    iget p1, p1, Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialData;->a:I

    if-eq v2, p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public final getDigit()I
    .locals 1

    .line 287
    iget v0, p0, Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialData;->a:I

    return v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialData;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final getPhoneNumber()Ljava/lang/String;
    .locals 1

    .line 279
    iget-object v0, p0, Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialData;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    .line 300
    iget v0, p0, Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialData;->a:I

    add-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 0

    .line 275
    iput-object p1, p0, Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialData;->b:Ljava/lang/String;

    return-void
.end method

.method public final setPhoneNumber(Ljava/lang/String;)V
    .locals 0

    .line 283
    iput-object p1, p0, Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialData;->c:Ljava/lang/String;

    return-void
.end method

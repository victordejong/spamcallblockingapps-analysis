.class Lcom/callapp/contacts/model/contact/ContactDataUtils$PhoneDetails;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/model/contact/ContactDataUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PhoneDetails"
.end annotation


# instance fields
.field public final deviceId:Ljava/lang/Long;

.field public final displayName:Ljava/lang/String;

.field public final isStarred:Ljava/lang/Boolean;


# direct methods
.method private constructor <init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    .line 358
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 359
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/ContactDataUtils$PhoneDetails;->deviceId:Ljava/lang/Long;

    .line 360
    iput-object p2, p0, Lcom/callapp/contacts/model/contact/ContactDataUtils$PhoneDetails;->displayName:Ljava/lang/String;

    .line 361
    iput-object p3, p0, Lcom/callapp/contacts/model/contact/ContactDataUtils$PhoneDetails;->isStarred:Ljava/lang/Boolean;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Boolean;Lcom/callapp/contacts/model/contact/ContactDataUtils$1;)V
    .locals 0

    .line 353
    invoke-direct {p0, p1, p2, p3}, Lcom/callapp/contacts/model/contact/ContactDataUtils$PhoneDetails;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.class public Lcom/pubmatic/sdk/video/POBLogConstants;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final INFO_MSG_BID_EVENT_PROCEED_ON_ERROR:Ljava/lang/String; = "Bid lost client side auction. Hence proceeding with error."

.field public static final INFO_MSG_BID_EVENT_PROCEED_TO_LOAD:Ljava/lang/String; = "Bid won client side auction. Hence proceeding to load."

.field public static final MSG_AD_ALREADY_SHOWN_ERROR:Ljava/lang/String; = "Ad is already shown."

.field public static final MSG_AD_EXPIRED_ERROR:Ljava/lang/String; = "Ad has expired."

.field public static final MSG_AD_EXPIRED_PROCEEDING_IGNORING_OPENWRAP_BID:Ljava/lang/String; = "Bid expired! Invoking ad server call by ignoring OpenWrap Bid."

.field public static final MSG_AD_LOADED_ERROR:Ljava/lang/String; = "Can\'t make new request. Please show already loaded ad before requesting a new one."

.field public static final MSG_AD_LOADING_ERROR:Ljava/lang/String; = "Can\'t make new request. Ad is loading."

.field public static final MSG_AD_NOT_INITIALIZED:Ljava/lang/String; = "Ad is either destroyed or not initialized. Please re-initialize."

.field public static final MSG_AD_NOT_READY_ERROR:Ljava/lang/String; = "Can\'t show ad. Ad is not ready."

.field public static final MSG_AD_NOT_USED_ERROR:Ljava/lang/String; = "Ad was never used to display"

.field public static final MSG_AD_OBJECT_INVALID:Ljava/lang/String; = "Please check if you have provided valid details while constructing an Ad object"

.field public static final MSG_AD_WAITING_ERROR:Ljava/lang/String; = "Can\'t make new request. Ad is waiting, perform action on bid event."

.field public static final MSG_ATTACHING_ICON:Ljava/lang/String; = "Attaching Icon to UI"

.field public static final MSG_BID_NOT_RECEIVED_WARNING:Ljava/lang/String; = "Attempting to proceed before receiving bid"

.field public static final MSG_CONTAINER_VIEW_ERROOR:Ljava/lang/String; = "Failed to create renderer container view."

.field public static final MSG_DEBUG_BIDS_FAILED:Ljava/lang/String; = "onBidsFailed : errorMessage= %s"

.field public static final MSG_DEBUG_BIDS_FETCHED:Ljava/lang/String; = "onBidsFetched : ImpressionId=%s, BidPrice=%s"

.field public static final MSG_END_CARD_FOUND:Ljava/lang/String; = "Suitable end-card found."

.field public static final MSG_END_CARD_NETWORK_ERROR:Ljava/lang/String; = "End-card failed to render due to network connectivity."

.field public static final MSG_END_CARD_NO_SUPPORTED_RESOURCE:Ljava/lang/String; = "No supported resource found for end-card."

.field public static final MSG_END_CARD_RENDERING_ERROR:Ljava/lang/String; = "End-card failed to render."

.field public static final MSG_ERROR_HANDLER_ERROR_EMPTY_TRACKER_URLS:Ljava/lang/String; = "Tracker url list is empty for vast error: %d"

.field public static final MSG_ERROR_HANDLER_ERROR_EXECUTING_TRACKER:Ljava/lang/String; = "Skipped tracker execution for vast error: %d"

.field public static final MSG_ERROR_HANDLER_VAST_ERROR:Ljava/lang/String; = "Vast error occurred: %s"

.field public static final MSG_EXPECTED_BIT_RATE:Ljava/lang/String; = "Expected bitrate for %s resolution & %s network is %d"

.field public static final MSG_FMT_BID_EVENT_ERROR:Ljava/lang/String; = "Notifying error through bid event delegate - %s"

.field public static final MSG_ICON_CLICKED:Ljava/lang/String; = "Icon clicked."

.field public static final MSG_ICON_LOADED:Ljava/lang/String; = "Icon loaded."

.field public static final MSG_ICON_MISSING_CLICKTHROUGH:Ljava/lang/String; = "Icon clickThrough url is missing."

.field public static final MSG_ICON_OPEN_LANDING_PAGE:Ljava/lang/String; = "Opening landing page of icon with url: %s"

.field public static final MSG_ICON_RENDERING_FAILURE:Ljava/lang/String; = "Unable to render Icon due to invalid details."

.field public static final MSG_ICON_UNAVAILABLE_RESOURCE:Ljava/lang/String; = "Icon resource is unavailable."

.field public static final MSG_INVALID_BIDID:Ljava/lang/String; = "bidId is invalid in onOpenWrapPartnerWin(), rendering the client-side winning bid"

.field public static final MSG_INVALID_ICON:Ljava/lang/String; = "Either Icon is missing or it is invalid."

.field public static final MSG_INVALID_REWARD_RECEIVED:Ljava/lang/String; = "Received invalid reward values"

.field public static final MSG_MISSING_INPUT_PARAMS:Ljava/lang/String; = "Missing ad request parameters. Please check input parameters."

.field public static final MSG_MISSING_REWARDED_LISTENER:Ljava/lang/String; = "POBRewardedAdListener is missing."

.field public static final MSG_MISSING_REWARDED_RENDERER_LISTENER:Ljava/lang/String; = "POBRewardedRendererListener is missing."

.field public static final MSG_NO_ADS_AVAILABLE:Ljava/lang/String; = "No ads available"

.field public static final MSG_NO_END_CARD:Ljava/lang/String; = "No companion found as an end-card."

.field public static final MSG_NO_MATCHING_END_CARD_FOUND:Ljava/lang/String; = "Couldn\'t find suitable end-card."

.field public static final MSG_NO_VAST_RESPONSE:Ljava/lang/String; = "Empty vast ad received."

.field public static final MSG_PROCEEDING_WITH_BID:Ljava/lang/String; = "Proceeding with bid."

.field public static final MSG_REMOVING_ICON:Ljava/lang/String; = "Removing Icon from UI."

.field public static final MSG_RENDERING_END_CARD:Ljava/lang/String; = "Rendering end-card."

.field public static final MSG_RENDERING_FAILED_ERROR:Ljava/lang/String; = "Rendering failed for descriptor: "

.field public static final MSG_RENDERING_ICON:Ljava/lang/String; = "Rendering icon for program %s after offset %s for duration %s"

.field public static final MSG_RENDERING_ICON_FAILURE:Ljava/lang/String; = "Failed to render icon."

.field public static final MSG_RENDERING_ICON_FAILURE_NO_NETWORK:Ljava/lang/String; = "Failed to render icon due to network connectivity issue."

.field public static final MSG_RENDERING_LEARN_MORE:Ljava/lang/String; = "Rendering Learn More button on end-card."

.field public static final MSG_RENDERING_ON_START:Ljava/lang/String; = "Rendering onStart"

.field public static final MSG_REWARDED_AD_SHOW_ERROR:Ljava/lang/String; = "Can not show rewarded ad for descriptor: "

.field public static final MSG_REWARDED_LISTENER_MISSING:Ljava/lang/String; = "Received video event (%s) but RewardedAdListener is not set."

.field public static final MSG_SCHEMA_VALIDATION_ERROR:Ljava/lang/String; = "Ad tag URI is missing in wrapper vast response."

.field public static final MSG_SELECTED_MEDIAL_FILE:Ljava/lang/String; = "Selected media file: %s from media files: %s, for bitrate: %d & size: %s & supported mimes: %s"

.field public static final MSG_SENDING_DEFAULT_REWARD:Ljava/lang/String; = "No Rewards Received. Hence,creating new Reward object with default values."

.field public static final MSG_SHOW_REWARDED_AD:Ljava/lang/String; = "Show rewarded ad"

.field public static final MSG_SKIPPING_AD:Ljava/lang/String; = "Skipping ad."

.field public static final MSG_UNSUPPORTED_VAST_VERSION:Ljava/lang/String; = "Received vast version is unsupported."

.field public static final MSG_VAST_ENDCARD_MISSING_CLICKTHROUGH:Ljava/lang/String; = "Companion clickThrough url is missing."

.field public static final MSG_VAST_LEARN_MORE_CLICKED:Ljava/lang/String; = "Opening landing page with url: %s"

.field public static final MSG_VAST_PLAYER_DESTROY:Ljava/lang/String; = "Vast player destroy called!"

.field public static final MSG_VAST_PLAYER_END_CARD_CLICK:Ljava/lang/String; = "Opening end-card landing page with url: %s"

.field public static final MSG_VAST_PLAYER_EXECUTE_TRACKER_EVENT:Ljava/lang/String; = "Event occurred: %s"

.field public static final MSG_VAST_PLAYER_LINEARITY_NOT_FOUND:Ljava/lang/String; = "Expected linearity not found."

.field public static final MSG_VAST_PLAYER_LINEAR_MEDIA_NOT_FOUND:Ljava/lang/String; = "Media file not found for linear ad."

.field public static final MSG_VAST_PLAYER_LINEAR_MEDIA_NOT_SUPPORTED:Ljava/lang/String; = "No supported media file found for linear ad."

.field public static final MSG_VAST_PLAYER_NO_CREATIVE:Ljava/lang/String; = "No ad creative found."

.field public static final MSG_VAST_PLAYER_RENDERING_STARTED:Ljava/lang/String; = "Vast player started rendering."

.field public static final MSG_VAST_PLAYER_SKIP_OFFSET:Ljava/lang/String; = "Video duration: %s seconds, skip option will be available after %s seconds."

.field public static final MSG_VAST_PLAYER_VIDEO_PLAYER_PAUSED:Ljava/lang/String; = "Playback paused."

.field public static final MSG_VAST_PLAYER_VIDEO_PLAYER_PLAY:Ljava/lang/String; = "Playback started."

.field public static final MSG_VAST_PLAYER_VIDEO_PLAYER_STOPPED:Ljava/lang/String; = "Playback stopped."

.field public static final MSG_VAST_SELECTED_MEDIA_FILE:Ljava/lang/String; = "Selected media file: %s"

.field public static final MSG_VAST_VIDEO_MISSING_CLICKTHROUGH:Ljava/lang/String; = "Video clickThrough url is missing."

.field public static final MSG_WRAPPER_THRESHOLD:Ljava/lang/String; = "Maximum wrapper attempts reached."

.field public static final MSG_XML_PARSING_ERROR:Ljava/lang/String; = "Failed to parse vast response."

.field public static final WARN_MSG_BID_EVENT_INVALID_STATE:Ljava/lang/String; = "Can not proceed before calling loadAd() or already in the process of proceed."

.field public static final WARN_MSG_BID_EVENT_NOT_IMPLEMENTED:Ljava/lang/String; = "\'POBBidEventListener\' not implemented"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
